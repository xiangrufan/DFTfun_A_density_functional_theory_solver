function result= mykinetic(alpha1,alpha2,shapematrix1,shapematrix2,RA,RB )
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
gamma=alpha1+alpha2;
np=alpha1*alpha2/gamma;

L1=shapematrix1(1);
 L2=shapematrix2(1);
 m1=shapematrix1(2);
 m2=shapematrix2(2);
 n1=shapematrix1(3);
 n2=shapematrix2(3);
 
result= alpha2*(4*(L2+m2+n2)+6)*myoverlap3(alpha1,alpha2,shapematrix1,shapematrix2,RA,RB)...
-4*alpha2^2*(myoverlap3(alpha1,alpha2,shapematrix1,[L2+2,m2,n2],RA,RB)+myoverlap3(alpha1,alpha2,shapematrix1,[L2,m2+2,n2],RA,RB)+myoverlap3(alpha1,alpha2,shapematrix1,[L2,m2,n2+2],RA,RB))...
-L2*(L2-1)*myoverlap3(alpha1,alpha2,shapematrix1,[L2-2,m2,n2],RA,RB)-m2*(m2-1)*myoverlap3(alpha1,alpha2,shapematrix1,[L2,m2-2,n2],RA,RB)-n2*(n2-1)*myoverlap3(alpha1,alpha2,shapematrix1,[L2,m2,n2-2],RA,RB) ;
%the equation is too long and I do not want it to be further complex, hence
%I make all other thing in different line. eg multiply by 0.5
result=result/2;

end