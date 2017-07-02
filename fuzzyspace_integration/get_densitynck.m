    
function psi = get_densitynck(x,y,z,d,spreads,shapematrix,centers,K,L,P)
% denisty to SUM(all orbital's density)
 % can not specify which orbital to integrate. 
 psi=0;         
             for mu=1:K%遍历选择了的  orbital
                  for nu=1:K%遍历选择了的 orbital
        shape=  shapematrix(mu,:);
        shapeB=  shapematrix(nu,:);
        xl=shape(1);
        ym=shape(2);
        zn=shape(3);
        
        xlB=shapeB(1);
        ymB=shapeB(2);
        znB=shapeB(3);
         
                    xA = centers(mu,1);
                    yA = centers(mu,2);
                    zA = centers(mu,3);
                        xB = centers(nu,1);
                    yB = centers(nu,2);
                    zB = centers(nu,3);
               for p=1:L(mu) % 遍历两个一个STO对应的高斯函数
                       for q=1:L(nu) % 遍历两个一个STO对应的高斯函数             
                    alpha = spreads(mu,p);
                       alpha2 = spreads(nu,q);
                       
              Psi1=d(mu,p).*((x-xA).^xl.*(y-yA).^ym.*(z-zA).^zn).*(exp(-alpha*(x-xA).^2).*exp(-alpha*(y-yA).^2).*exp(-alpha*(z-zA).^2));
              Psi2=  ( d(nu,q).*(x-xB).^xlB.*(y-yB).^ymB.*(z-zB).^znB).*exp(-alpha2*(x-xB).^2).*exp(-alpha2*(y-yB).^2).*exp(-alpha2*(z-zB).^2);     
              
               psi=psi+Psi1.*Psi2* P(mu,nu);
                       end
                end
             end
          end
 
end