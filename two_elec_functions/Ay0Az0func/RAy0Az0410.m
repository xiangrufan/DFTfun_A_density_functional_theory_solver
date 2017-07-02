function result =rfunccode(alpha,A,Farray) 
Ax=A(1);
Ay=A(2);
Az=A(3);
R0003=R000x(3,alpha,A,Farray);
R0004=R000x(4,alpha,A,Farray);
R0005=R000x(5,alpha,A,Farray);

result =(3)*((Ay*(R0003))+Ax*(Ax*(Ay*(R0004))))+Ax*((2)*(Ax*(Ay*(R0004)))+Ax*((Ay*(R0004))+Ax*(Ax*(Ay*(R0005)))));