function result =rfunccode(alpha,A,Farray) 
Ax=A(1);
Ay=A(2);
Az=A(3);
R0003=R000x(3,alpha,A,Farray);
R0004=R000x(4,alpha,A,Farray);

result =((2)*(Ay*(R0003))+Ay*((R0003)+Ay*(Ay*(R0004))));