function result =rfunccode(alpha,A,Farray) 
Ax=A(1);
Ay=A(2);
Az=A(3);
R0004=R000x(4,alpha,A,Farray);
R0005=R000x(5,alpha,A,Farray);

result =((2)*(Ay*(Az*(R0004)))+Ay*((Az*(R0004))+Ay*(Ay*(Az*(R0005)))));