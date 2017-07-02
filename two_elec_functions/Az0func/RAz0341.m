function result =rfunccode(alpha,A,Farray) 
Ax=A(1);
Ay=A(2);
Az=A(3);
R0005=R000x(5,alpha,A,Farray);
R0006=R000x(6,alpha,A,Farray);
R0007=R000x(7,alpha,A,Farray);
R0008=R000x(8,alpha,A,Farray);

result =(2)*(Ax*((3)*((Az*(R0005))+Ay*(Ay*(Az*(R0006))))+Ay*((2)*(Ay*(Az*(R0006)))+Ay*((Az*(R0006))+Ay*(Ay*(Az*(R0007)))))))+Ax*(((3)*((Az*(R0005))+Ay*(Ay*(Az*(R0006))))+Ay*((2)*(Ay*(Az*(R0006)))+Ay*((Az*(R0006))+Ay*(Ay*(Az*(R0007))))))+Ax*(Ax*((3)*((Az*(R0006))+Ay*(Ay*(Az*(R0007))))+Ay*((2)*(Ay*(Az*(R0007)))+Ay*((Az*(R0007))+Ay*(Ay*(Az*(R0008))))))));