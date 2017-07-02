function Rresult = Rfunc (n,t,u,v,alpha,A,Farray)
% gamma_p=alpha1+alpha2;
% gamma_q=alpha3+alpha4;
% nya=gamma_p*gamma_q/(gamma_p+gamma_q);
% This code is wrong , plze check the result

Ax=A(1);
Ay=A(2);
Az=A(3);

 
 
 if t==0&&u==0&&v==0
%        Fvu(n,xx)
%  'route A'
xx=alpha.*(Ax.^2+Ay.^2+Az.^2);
 
       
     Rresult=((-2*alpha).^n)*FastF_mex(n,xx,Farray) ;
%   Rresult=((-2*alpha).^n)*Fvu(n,xx) ;
 
 end
 if t<0||u<0||v<0
%      'route B'
     Rresult=0;
   
 end
  if t>0
  if Ax==0
      Rresult=(t-1)*Rfunc(n+1,t-2,u,v,alpha,A,Farray);
      
  else
     Rresult=(t-1)*Rfunc(n+1,t-2,u,v,alpha,A,Farray)+Ax.*Rfunc(n+1,t-1,u,v,alpha,A,Farray) ; 
    
  end
 end
 if u>0
     if Ay==0
          Rresult=(u-1)*Rfunc(n+1,t,u-2,v,alpha,A,Farray);
         
     else
     Rresult=(u-1)*Rfunc(n+1,t,u-2,v,alpha,A,Farray)+Ay.*Rfunc(n+1,t,u-1,v,alpha,A,Farray)  ;
     
     end
 end
  if v>0
    if Az==0
        Rresult =(v-1)*Rfunc(n+1,t,u,v-2,alpha,A,Farray);
        
    else
Rresult =(v-1)*Rfunc(n+1,t,u,v-2,alpha,A,Farray)+Az.*Rfunc(n+1,t,u,v-1,alpha,A,Farray);
 
    end
  end
%      Rresult=v*Rfunc(n+1,t,u,v-2,alpha,A)+Az*Rfunc(n+1,t,u,v-1,alpha,A)   
      
end
 
 