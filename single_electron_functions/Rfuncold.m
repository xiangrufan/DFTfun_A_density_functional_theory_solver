function Rresult = Rfunc (n,t,u,v,alpha,A)
% gamma_p=alpha1+alpha2;
% gamma_q=alpha3+alpha4;
% nya=gamma_p*gamma_q/(gamma_p+gamma_q);
% This code is wrong , plze check the result

Ax=A(1);
Ay=A(2);
Az=A(3);

  xx=alpha*(A*A');
 
 if t==0&&u==0&&v==0
%        Fvu(n,xx)
%  'route A'
     Rresult=((-2*alpha)^n)*Fvu(n,xx) ;
     return
 elseif t<0||u<0||v<0
%      'route B'
     Rresult=0;
     return
 elseif t>0
  
     Rresult=(t-1)*Rfunc(n+1,t-2,u,v,alpha,A)+Ax*Rfunc(n+1,t-1,u,v,alpha,A) ; 
     return
 elseif u>0
     Rresult=(u-1)*Rfunc(n+1,t,u-2,v,alpha,A)+Ay*Rfunc(n+1,t,u-1,v,alpha,A)  ;
     return
 elseif v>0
%         'route C'
%          x=n+1,t,u,y=v-2,alpha,A
Rresult =(v-1)*Rfunc(n+1,t,u,v-2,alpha,A)+Az*Rfunc(n+1,t,u,v-1,alpha,A);

%      Rresult=v*Rfunc(n+1,t,u,v-2,alpha,A)+Az*Rfunc(n+1,t,u,v-1,alpha,A)   
     return
 end
 
end