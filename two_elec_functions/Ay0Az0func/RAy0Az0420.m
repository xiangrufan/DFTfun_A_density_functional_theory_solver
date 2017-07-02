function result =rfunccode(alpha,A,Farray) 
Ax=A(1);
Ay=A(2);
Az=A(3);
R0003=R000x(3,alpha,A,Farray);
R0004=R000x(4,alpha,A,Farray);
R0005=R000x(5,alpha,A,Farray);
R0006=R000x(6,alpha,A,Farray);

result =(3)*(((R0003)+Ay*(Ay*(R0004)))+Ax*(Ax*((R0004)+Ay*(Ay*(R0005)))))+Ax*((2)*(Ax*((R0004)+Ay*(Ay*(R0005))))+Ax*(((R0004)+Ay*(Ay*(R0005)))+Ax*(Ax*((R0005)+Ay*(Ay*(R0006))))));