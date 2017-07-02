function result =rfunccode(alpha,A,Farray) 
Ax=A(1);
Ay=A(2);
Az=A(3);
R0001=R000x(1,alpha,A,Farray);
R0005=R000x(5,alpha,A,Farray);
R0006=R000x(6,alpha,A,Farray);
R0007=R000x(7,alpha,A,Farray);
R0008=R000x(8,alpha,A,Farray);
R0009=R000x(9,alpha,A,Farray);
R00010=R000x(10,alpha,A,Farray);

result =(3)*((((3)*((R0005)+Az*(Az*(R0006)))+Az*((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007)))))+Ay*(Ay*((3)*((R0006)+Az*(Az*(R0007)))+Az*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008)))))))+Ax*(Ax*(((3)*((R0006)+Az*(Az*(R0007)))+Az*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008)))))+Ay*(Ay*((3)*((R0007)+Az*(Az*(R0008)))+Az*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009)))))))))+Ax*((2)*(Ax*(((3)*((R0006)+Az*(Az*(R0007)))+Az*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008)))))+Ay*(Ay*((3)*((R0007)+Az*(Az*(R0008)))+Az*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009))))))))+Ax*((((3)*((R0006)+Az*(Az*(R0007)))+Az*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008)))))+Ay*(Ay*((3)*((R0007)+Az*(Az*(R0008)))+Az*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009)))))))+Ax*(Ax*(((3)*((R0007)+Az*(Az*(R0008)))+Az*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009)))))+Ay*(Ay*((3)*((R0008)+Az*(Az*(R0009)))+Az*((2)*(Az*(R0009))+Az*((R0009)+Az*(Az*(R00010))))))))));