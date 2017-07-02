function Eresult = Efunc(t,i,j,alpha1,alpha2,Ax,Bx)
%*****************************************************************************
%     <two_electron integral function>
%     Copyright (C) <2014>  <X fan@ Clarkson Univ> 
%     reference: folk.uio.no/helgaker/talks/SostrupIntegrals_10.pdf
% 
%     This program is free software: you can redistribute it and/or modify
%     it under the terms of the GNU General Public License as published by
%     the Free Software Foundation, either version 3 of the License, or
%     (at your option) any later version.
% 
%     This program is distributed in the hope that it will be useful,
%     but WITHOUT ANY WARRANTY; without even the implied warranty of
%     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%     GNU General Public License for more details.
% 
%     You should have received a copy of the GNU General Public License
%     along with this program.  If not, see <http://www.gnu.org/licenses/>.
%*****************************************************************************
% hermite gaussian integral

 if t<0||t>i+j
   Eresult=0;
 return
 elseif t==0&&i==0&&j==0
      p=alpha1+alpha2;
      np=alpha1.*alpha2./p;
    XAB=Ax-Bx;
     KAB=exp(-np*(XAB^2));
Eresult=KAB;
return
 elseif i>0
       p=alpha1+alpha2;
     Px=(alpha1*Ax+alpha2*Bx)./p;
   XPA=Px-Ax;
   if XPA==0
   Eresult=(1./(2*p)).*Efunc(t-1,i-1,j,alpha1,alpha2,Ax,Bx)+(t+1).*Efunc(t+1,i-1,j,alpha1,alpha2,Ax,Bx);
   else
    Eresult=(1./(2*p)).*Efunc(t-1,i-1,j,alpha1,alpha2,Ax,Bx)+XPA.*Efunc(t,i-1,j,alpha1,alpha2,Ax,Bx)+(t+1)*Efunc(t+1,i-1,j,alpha1,alpha2,Ax,Bx); 
  
   end

 elseif j>0
    p=alpha1+alpha2;
     Px=(alpha1*Ax+alpha2*Bx)./p;
   XPB=Px-Bx;
   
   if XPB==0
    Eresult=(1./(2*p)).*Efunc(t-1,i,j-1,alpha1,alpha2,Ax,Bx)+(t+1).*Efunc(t+1,i,j-1,alpha1,alpha2,Ax,Bx);
   else
   Eresult=(1./(2*p)).*Efunc(t-1,i,j-1,alpha1,alpha2,Ax,Bx)+XPB.*Efunc(t,i,j-1,alpha1,alpha2,Ax,Bx)+(t+1)*Efunc(t+1,i,j-1,alpha1,alpha2,Ax,Bx);
   end
   
   return
 end




end