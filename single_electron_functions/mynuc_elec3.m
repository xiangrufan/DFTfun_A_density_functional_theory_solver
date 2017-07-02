function result = mynuc_elec3 (alpha1,alpha2,shape1,shape2,A,B,C,Farray)
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
result=0;
Ax=A(1);
Bx=B(1);
Ay=A(2);
By=B(2);
Az=A(3);
Bz=B(3);
L1=shape1(1);
 L2=shape2(1);
 m1=shape1(2);
 m2=shape2(2);
 n1=shape1(3);
 n2=shape2(3);
 ps=alpha1+alpha2;
 Pbig= (alpha1*A+alpha2*B)/ps;
 distance=Pbig-C;

for t=0:(L1+L2)
     for u=0:(m1+m2)
        for v=0:(n1+n2)
            result=result+ Efunc(t,L1,L2,alpha1,alpha2,Ax,Bx)*...
            Efunc(u,m1,m2,alpha1,alpha2,Ay,By)* Efunc(v,n1,n2,alpha1,alpha2,Az,Bz)...
            *rfunccode ( t,u,v,ps,shiftdim(distance),Farray); 
        end
    end
end
%   result=result/2
result=-(2*pi/ps)*result;
end