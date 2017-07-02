function result = Fvu (v,u)
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
    if (u < 1 )
 k=1:6;
%     core=core+ (-u)^k/(factorial(k)*(2*v+2*k+1));
    tmp1=(-u).^k;
    tmp2=factorial(k);
    tmp3=2*v+2*k+1;
    tmp4=tmp2.*tmp3;
    core=tmp1./tmp4;
      
        result= sum(core)+1/(2*v+1);

    else
    
fvupart1=factorial(2*v)/(2*factorial(v));
fvupart2=(sqrt(pi)*erf(sqrt(u)))/(4^v*u^(v+0.5));
core=0;
for k=0:v-1
    core=core+factorial(v-k)/(4^k*factorial(2*v-2*k)*u^(k+1));
end
result=fvupart1*(fvupart2-exp(-u)*core);
    end
 
end
 