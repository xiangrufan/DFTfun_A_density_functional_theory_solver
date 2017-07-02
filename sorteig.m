function [Usort Dsort] = sorteig(U,D)

sz = size(U);
nel = sz(2);

d = diag(D);

[dsort index] = sort(d);

Dsort = zeros(nel,nel);

for i=1:nel
    
    Usort(:,i) = U(:,index(i));
    Dsort(i,i) = dsort(i);
    
end