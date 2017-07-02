function result =rfunccode(alpha,A,Farray) 
Ax=A(1);
Ay=A(2);
Az=A(3);
R0001=R000x(1,alpha,A,Farray);
R0002=R000x(2,alpha,A,Farray);

result =(R0001)+Ax*(Ax*(R0002));