function [x w v] = cheby2(n,d,kind)
%CHEBPTS  Chebyshev points in [-1,1].
%   CHEBPTS(N) returns N Chebyshev points of the 2nd-kind in [-1,1].
%
%   CHEBPTS(N,D), where D is vector of length 2 and N is a scalar integer,
%   scales the nodes and weights for the interval [D(1) D(2)]. If the
%   interval is infinite, the map is chosen to be the default 'unbounded
%   map' with mappref('parinf') = [1 0] and mappref('adaptinf') = 0. If
%   length(D) > 2 and N a vector of length(D)-1, then CHEBPTS returns a
%   column vector of the stacked N(k) Chebyshev points on the subintervals
%   D(k:k+1). If length(N) is 1, then D is treated as [D(1) D(end)].
%
%   [X W] = CHEBPTS(N,D) returns also a row vector of the (scaled) weights
%   for Clenshaw-Curtis quadrature (computed using [1]). (For nodes and
%   weights of Gauss-Chebyshev quadrature, use [X W] = JACPTS(N,-.5,-.5,D))
%
%   [X W V] = CHEBPTS(N,D) returns, in addition to X and W, the barycentric
%   weights V corresponding to the Chebyshev points X.
%
%   [X W V] = CHEBPTS(F) returns the Chebyshev nodes and weights
%   corresponding to the domain and length of the chebfun F.
%
%   [X W V] = CHEBPTS(N,KIND) or CHEBPTS(N,D,KIND) returns Chebyshev points
%   and weights of the 1st-kind if KIND = 1 and 2nd-kind if KIND = 2
%   (default). (Note that if KIND is not suplpied, chebpts will always
%   return 2nd-kind points, regardless of the value of 'chebkind' in
%   chebfunpref.).
%
%   See also legpts, jacpts, lagpts, and hermpts.

%   Copyright 2011 by The University of Oxford and The Chebfun Developers. 
%   See http://www.maths.ox.ac.uk/chebfun/ for Chebfun information.

%   [1] Jörg Waldvogel, "Fast construction of the Fejér and Clenshaw-Curtis
%   quadrature rules", BIT Numerical Mathematics 46 (2006), pp 195-202.

% Intialise
x = []; w = []; v = []; scale = false;

% Shortcut for simple input (2nd-kind points on [-1 1]).
if nargin == 1 && isnumeric(n) && numel(n) == 1 && n > 0
    if n == 1, x = 0; w = 2; v = 1; return, end % Special case
    m = n-1;
    x = sin(pi*(-m:2:m)/(2*m)).';       % Chebyshev points 
    if nargout > 1                      % Quadrature weights            
        w = weights2(n);
    end
    if nargout > 2                      % Barycentric weights
        v = [.5 ; ones(n-1,1)]; v(2:2:end) = -1; v(end) = .5*v(end);
    end
    return
end

% Parse the inputs
if isa(n,'chebfun')
    if numel(n) > 1
        error('CHEBFUN:chebpts:quasi',...
            'chebpts does not support quasi-matrices.');
    end
    nn = zeros(n.nfuns,1);
    for k = 1:n.nfuns
        nn(k) = n.funs(k).n;
    end
    if nargin == 1, d = 2; end % Default to 2nd-kind
    if nargout == 1
        x = chebpts(nn,n.ends,d);
    elseif nargout == 2
        [x w] = chebpts(nn,n.ends,d);
    else
        [x w v] = chebpts(nn,n.ends,d);
    end        
    return
elseif nargin == 1
    d = [-1 1];
    kind = 2;
elseif nargin == 2
    if isa(d,'domain')
       scale = true;
       kind = 2;
    elseif length(d) == 1
       kind = d;
       d = [-1 1];
    else
       scale = true;
       kind = 2; 
    end
elseif nargin == 3
    scale = true; 
end
if isa(d,'domain')
    d = d.endsandbreaks;   
end
if isempty(d) || ~any(n)
    return % Return empty vector if domain is empty or n == 0
end
if numel(n) == 1
    d = d([1 end]);
end

% Deal with the piecewise case (where d has breakpoints and n is a vector).
numints = numel(d)-1; 
if numints > 1
    if numel(n) ~= numints
        error('CHEBFUN:chebpts:numints', ...
            'Vector N does not match domain D.'); 
    end
    csn = cumsum([0 ; n(:)]);
    x = zeros(csn(end),1);
    if nargout == 1
        for k = 1:numints
           idxk = csn(k)+1:csn(k+1);
           x(idxk) = chebpts(n(k),d(k:k+1),kind);
        end
    elseif nargout == 2
        w = zeros(1,csn(end));
        for k = 1:numints
           idxk = csn(k)+1:csn(k+1);
           [x(idxk) w(idxk)] = chebpts(n(k),d(k:k+1),kind);
        end
    else
        w = zeros(1,csn(end)); v = zeros(csn(end),1);
        for k = 1:numints
            idxk = csn(k)+1:csn(k+1);
            [x(idxk) w(idxk) v(idxk)] = chebpts(n(k),d(k:k+1),kind);
        end
    end
    return
end    

if numel(n) > 1, 
    error('CHEBFUN:chebpts:vecn','Vector N does not match domain D.');
end

% Avoid unnecessary scaling
if (d(1)==-1 && d(2)==1), scale = false; end

% Allow strings to determine which kind of points
if ischar(kind)
    if      strcmpi(kind,'1st'), kind = 1;
    elseif  strcmpi(kind,'2nd'), kind = 2; end
end

if n < 0, 
    error('CHEBFUN:chebpts:posinpt',...
        'Input should be a nonnegative number');
elseif n == 1,
    x = 0; w = 2; v = 1;
else
    m = n-1;
    if kind == 1
        x = sin(pi*(-m:2:m)/(2*m+2)).';      % 1st-kind Chebyshev points
        if nargout > 1  % Quadrature weights
            w = weights1(n);
        end
        if nargout > 2  % Barycentric weights
            v = sin((2*(0:n-1)+1)*pi/(2*n)).'; v(2:2:end) = -v(2:2:end);
            if ~mod(n,2), v = v./max(abs(v)); end
        end
    else
        x = sin(pi*(-m:2:m)/(2*m)).';        % 2nd-kind Chebyshev points
        if nargout > 1  % Quadrature weights            
            w = weights2(n);
        end
        if nargout > 2  % Barycentric weights
            v = [.5 ; ones(n-1,1)]; v(2:2:end) = -1; v(end) = .5*v(end);
        end
    end
end

% Rescale if d is provided:
if scale   
    if ~any(isinf(d))   % Finite interval
        dab05 = .5*diff(d);
        x = x*dab05 + (d(1) + dab05);
        w = dab05*w;
    else                % Infinite interval
        m = maps(fun,{'unbounded'},d); % Use default map
        if nargout > 1  % Quadrature weights
            w = w.*m.der(x.');
            if isinf(d(1)), w(1) = 0; end
            if isinf(d(end)), w(end) = 0; end
        end
        x = m.for(x);
        if kind == 2    % Force endpoints for 2nd-kind points
            x([1 end]) = d([1 end]);
        end
    end        
end

function w = weights1(n) % 1st-kind Chebyshev weights
% Jörg Waldvogel, "Fast construction of the Fejér and Clenshaw-Curtis
% quadrature rules", BIT Numerical Mathematics 43 (1), p. 001-018 (2004).
if n == 1
    w = 2;
else
    l = floor(n/2)+1;
    K = 0:n-l;   
    v = [2*exp(1i*pi*K/n)./(1-4*K.^2)  zeros(1,l)];
    w = real(ifft(v(1:n) + conj(v(n+1:-1:2))));
end

function w = weights2(n) % 2nd-kind Chebyshev wieghts
% Jörg Waldvogel, "Fast construction of the Fejér and Clenshaw-Curtis 
% quadrature rules", BIT Numerical Mathematics 43 (1), p. 001-018 (2004).
if n == 1
    w = 2;
else
    m = n-1;  
    c = zeros(1,n);
    c(1:2:n) = 2./[1 1-(2:2:m).^2 ]; 
    f = real(ifft([c(1:n) c(m:-1:2)]));
    w = [f(1) 2*f(2:m) f(n)];
end