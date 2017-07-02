function result = myelec_elec3 (alpha1,alpha2,alpha3,alpha4,shape1,shape2,shape3,shape4,A,B,C,D)
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
Cx=C(1);
Dx=D(1);
Ay=A(2);
By=B(2);
Cy=C(2);
Dy=D(2);
Az=A(3);
Bz=B(3);
Cz=C(3);
Dz=D(3);

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
 
gamma_p=alpha1+alpha2;
gamma_q=alpha3+alpha4;
P=(alpha1*A+alpha2*B)/gamma_p;
Q=(alpha3*C+alpha4*D)/gamma_q;
result1=(2*pi^2.5)/(gamma_p*gamma_q*sqrt(gamma_p+gamma_q));
nya=gamma_p*gamma_q/(gamma_p+gamma_q);
result=0;


for t=0:(L1+L2)
     for u=0:(m1+m2)
        for v=0:(n1+n2)
            tmp1=Efunc(t,L1,L2,alpha1,alpha2,Ax,Bx);
            tmp2=Efunc(u,m1,m2,alpha1,alpha2,Ay,By);
            tmp3=Efunc(v,n1,n2,alpha1,alpha2,Az,Bz);
            if tmp1==0||tmp2==0||tmp3==0
                result=result+0;
            else
                 innercycle1=tmp1*tmp2*tmp3 ;
        resulttmp=0;
            for tau=0:(L3+L4)
                for vi=0:(m3+m4)
                    for phi=0:(n3+n4)
                        tmp4=Efunc(tau,L3,L4,alpha3,alpha4,Cx,Dx);
                        tmp5=Efunc(vi,m3,m4,alpha3,alpha4,Cy,Dy);
                        tmp6=Efunc(phi,n3,n4,alpha3,alpha4,Cz,Dz);
                        if tmp4==0||tmp5==0||tmp6==0
                            resulttmp=resulttmp+0;
                        else
                 resulttmp=   resulttmp+    (-1)^(tau+vi+phi)*tmp4*tmp5*tmp6*Rfuncold(0,t+tau,u+vi,v+phi,nya,P-Q);
                        end
                    end
                 end
            end
           
            result=result+innercycle1*resulttmp; 
            end
        end
     end
end
result=result1*result;
end