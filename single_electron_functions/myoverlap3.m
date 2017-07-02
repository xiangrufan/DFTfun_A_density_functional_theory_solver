function result = myoverlap3 (alpha1,alpha2,shape1,shape2,A,B)
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
Ax=A(1);
Bx=B(1);
Ay=A(2);
By=B(2);
Az=A(3);
Bz=B(3);
t=0;
L1=shape1(1);
 L2=shape2(1);
 m1=shape1(2);
 m2=shape2(2);
 n1=shape1(3);
 n2=shape2(3);
p=alpha1+alpha2;
result=Efunc(t,L1,L2,alpha1,alpha2,Ax,Bx)*Efunc(t,m1,m2,alpha1,alpha2,Ay,By)*Efunc(t,n1,n2,alpha1,alpha2,Az,Bz)*(pi/p)^1.5;

end