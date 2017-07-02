function result =rfunccode(alpha,A,Farray) 
Ax=A(1);
Ay=A(2);
Az=A(3);
R0004=R000x(4,alpha,A,Farray);
R0005=R000x(5,alpha,A,Farray);
R0006=R000x(6,alpha,A,Farray);
R0007=R000x(7,alpha,A,Farray);

result =(3)*(((Az*(R0004))+Ay*(Ay*(Az*(R0005))))+Ax*(Ax*((Az*(R0005))+Ay*(Ay*(Az*(R0006))))))+Ax*((2)*(Ax*((Az*(R0005))+Ay*(Ay*(Az*(R0006)))))+Ax*(((Az*(R0005))+Ay*(Ay*(Az*(R0006))))+Ax*(Ax*((Az*(R0006))+Ay*(Ay*(Az*(R0007)))))));