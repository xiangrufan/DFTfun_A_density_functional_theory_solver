%Using gaussian's output file to construct a new density matrix, hence enables debug..  .........

 



%   P=Pg




energy1=sum(sum(P.*V)) ;     
 
        energy1
        % energy 1 is the potential enenegy
        
        energy2=sum(sum(P.*T));
        energy2
        %energy 2 is the  kinetic energy
%         Fele=F-T-V;
        
         G=zeros(K,K);
          for i=1:K
            for j=1:K
                for k=1:K
                    for l=1:K
                        G(i,j) = G(i,j) + ...
                   P(k,l)*( two_elec(i,j,l,k)...
                            - 0.5*two_elec(i,k,l,j) );
                    end
                end
            end
         end
              energy3=0.5*sum(sum(P.*G)) ;

total = energy3+energy1+energy2+48/R
%         energy3-energy1-energy2
% energy4=0;
%   for mu=1:K
%             for nu=1:K
%                 energy4 = energy4 + P(mu,nu)* (H(mu,nu) + F(mu,nu));
%             end
%   end
  energy4=0.5*sum(sum(P.*G))+sum(sum(P.*(T+V)))
  
           internucEnergy = 6*8/R; 
           energy4 =energy4+internucEnergy