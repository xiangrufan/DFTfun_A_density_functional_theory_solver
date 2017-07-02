function  JorK   = get2elec_tablevE ( mu,nu,lambda,sigma,centers,spreads,shapematrix,d,L,Farray,effuncall)

electmp=0;
A = [centers(mu,1) centers(mu,2) centers(mu,3)];
B = [centers(nu,1) centers(nu,2) centers(nu,3)];
C = [centers(lambda,1) centers(lambda,2) centers(lambda,3)];
D = [centers(sigma,1) centers(sigma,2) centers(sigma,3)];
 shape1=squeeze(shapematrix(mu,:));
 shape2=squeeze(shapematrix(nu,:));
 shape3=squeeze(shapematrix(lambda,:));
 shape4=squeeze(shapematrix(sigma,:));
L1=shape1(1);
L2=shape2(1);
L3=shape3(1);
L4=shape4(1);
m1=shape1(2);
m2=shape2(2);
m3=shape3(2);
m4=shape4(2);
n1=shape1(3);
n2=shape2(3);
n3=shape3(3);
n4=shape4(3); 
    outerxyz= effuncall(:,:,:,mu,nu);
    innnerxyz= effuncall(:,:,:,lambda,sigma);
                      for pL=1:L(mu)
                         for q=1:L(nu)
                            for s=1:L(lambda)
                                for tx=1:L(sigma)                              
       alpha1 = spreads( mu,pL);
       alpha2 = spreads( nu,q);
       alpha3 = spreads( lambda,s);
       alpha4 = spreads( sigma,tx);
gamma_p=alpha1+alpha2;
gamma_q=alpha3+alpha4;
P=(alpha1*A+alpha2*B)/gamma_p;
Q=(alpha3*C+alpha4*D)/gamma_q;
result1=(2*pi^2.5)/(gamma_p*gamma_q*sqrt(gamma_p+gamma_q));
nya=gamma_p*gamma_q/(gamma_p+gamma_q);
result=0;
 
PQ=(P-Q)';
 
for t=0:(L1+L2)
     for u=0:(m1+m2)
        for v=0:(n1+n2)
         outercycle=outerxyz(pL,q,t+5*(u)+25*(v)+1) ;
              if outercycle==0
                result=result+0;
            else
        resulttmp=0;
            for tau=0:(L3+L4)
                for vi=0:(m3+m4)
                    for phi=0:(n3+n4)
               innercycle=innnerxyz(s,tx,tau+5*(vi)+25*(phi)+1);
             if innercycle==0
                            resulttmp=resulttmp+0;
             else
%                    resulttmp=   resulttmp+    (-1)^(tau+vi+phi)*innercycle*Rfunctmp(t+tau+1,u+vi+1,v+phi+1);
%                                             resulttmp=   resulttmp+    (-1)^(tau+vi+phi)*innercycle*rfuncempty(t+tau,u+vi,v+phi,nya,(P-Q),Farray);
                 
 if PQ(1)==0
   if PQ(2)==0 
       if PQ(3)==0
  resulttmp=   resulttmp+    (-1)^(tau+vi+phi)*innercycle*rfunccodeAx0Ay0Az0(t+tau,u+vi,v+phi,nya,PQ',Farray);
       else
resulttmp=   resulttmp+    (-1)^(tau+vi+phi)*innercycle*rfunccodeAx0Ay0(t+tau,u+vi,v+phi,nya,PQ',Farray);
       end
   else
       if PQ(3)==0
        resulttmp=   resulttmp+    (-1)^(tau+vi+phi)*innercycle*rfunccodeAx0Az0(t+tau,u+vi,v+phi,nya,PQ',Farray);   
       else
       resulttmp=   resulttmp+    (-1)^(tau+vi+phi)*innercycle*rfunccodeAx0(t+tau,u+vi,v+phi,nya,PQ',Farray);
       end
   end
 elseif PQ(2)==0
     if PQ(3)==0
    resulttmp=   resulttmp+    (-1)^(tau+vi+phi)*innercycle*rfunccodeAy0Az0(t+tau,u+vi,v+phi,nya,PQ',Farray);
     else
     resulttmp=   resulttmp+    (-1)^(tau+vi+phi)*innercycle*rfunccodeAy0(t+tau,u+vi,v+phi,nya,PQ',Farray);
     end
 elseif PQ(3)==0
     resulttmp=   resulttmp+    (-1)^(tau+vi+phi)*innercycle*rfunccodeAz0(t+tau,u+vi,v+phi,nya,PQ',Farray);
 else
    resulttmp=   resulttmp+    (-1)^(tau+vi+phi)*innercycle*rfunccode(t+tau,u+vi,v+phi,nya,PQ',Farray);
 end
%   resulttmp=   resulttmp+    (-1)^(tau+vi+phi)*innercycle*Rfunc(0,t+tau,u+vi,v+phi,nya,PQ',Farray);
%  -----------------------------
%   correct=Rfunc(0,t+tau,u+vi,v+phi,nya,PQ',Farray);
%   quick=rfunccode(t+tau,u+vi,v+phi,nya,PQ',Farray);
%   if abs(correct-quick)>1e-5
%       t+tau,
%       u+vi,
%       v+phi,
%       nya,
%       PQ'
%   end
%  -----------------------------
  %                        resulttmp=   resulttmp+    (-1)^(tau+vi+phi)*innercycle*Rfunc(0,t+tau,u+vi,v+phi,nya,(P-Q)',Farray);

             end
                    end
                 end
            end
           
            result=result+outercycle*resulttmp; 
              end
        end
     end
end
Resultmyelec=result1*result; 

result=d( mu,pL)*d(nu,q)*d(lambda,s)*d(sigma,tx)*Resultmyelec;
      electmp = electmp + result; 
      
                                end
                            end
                         end
                     end                   
         JorK=electmp;

     
end
 