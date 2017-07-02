function Rresult = R000x (n,alpha,A,Farray)
 
asqr=sum(A.^2);
xx=alpha*asqr;
% FastF(n,xx,Farray) ;
Rresult=((-2*alpha)^n)*FastF(n,xx,Farray) ;
 
 
 
end

function result = FastF(n,T,Farray)
%  if (T < 1 ) 这个方法没用！！！
%  k=1:6;
% %     core=core+ (-u)^k/(factorial(k)*(2*v+2*k+1));
%     tmp1=(-T).^k;
%     tmp2=factorial(k);
%     tmp3=2*n+2*k+1;
%     tmp4=tmp2.*tmp3;
%     core=tmp1./tmp4;
%       
%         result= sum(core)+1/(2*n+1);

 if T<12
Tstar=floor(T*10)/10;
TstarnearestP=Tstar*10+1;
nindex=n+1;
result=0;
  K=0:7;
 result=result+sum(Farray(K+ nindex,TstarnearestP)'.*(Tstar-T).^K./factorial(K));
elseif T<30
    j=0;
    result=F0(T);
    while j<n
        result=(result*(2*j+1)-exp(-T))/(2*T);
        j=j+1;
    end
else
     j=0;
    result=0.886226925452758/T^0.5;
    while j<n
        result=(result*(2*j+1)-exp(-T))/(2*T);
        j=j+1;
    end
end


end

function gresult = F0(T)
if T<15
    g=0.4999489092-0.2473631686/T+0.321180909/T^2-0.3811559346/T^3; 
elseif T<18
    g= 0.4998436875-0.24249438/T+0.24642845/T^2;
elseif T<24
    g=0.499093162-0.2152832/T;
else 
    g=0.490;
end
gresult=0.886226925452758/T^0.5-exp(-T)*g/T;
end
