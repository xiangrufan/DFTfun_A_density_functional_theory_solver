function result = rfunccode (x,y,z,alpha,A,Farray)  
 mlock
 Ax=A(1); 
 Ay=A(2); 
 Az=A(3);if x==0 
if y==0 
if z==0 
R0000=R000x (0,alpha,A,Farray)  ;

 result =R0000;
 elseif z==1
R0001=R000x (1,alpha,A,Farray)  ;

 result =Az*(R0001);
 elseif z==2
R0001=R000x (1,alpha,A,Farray)  ;
R0002=R000x (2,alpha,A,Farray)  ;

 result =(R0001)+Az*(Az*(R0002));
 elseif z==3
R0002=R000x (2,alpha,A,Farray)  ;
R0003=R000x (3,alpha,A,Farray)  ;

 result =(2)*(Az*(R0002))+Az*((R0002)+Az*(Az*(R0003)));
elseif z==4 
 R0002=R000x (2,alpha,A,Farray)  ;
R0003=R000x (3,alpha,A,Farray)  ;
R0004=R000x (4,alpha,A,Farray)  ;

 result =(3)*((R0002)+Az*(Az*(R0003)))+Az*((2)*(Az*(R0003))+Az*((R0003)+Az*(Az*(R0004))));
 else 
 result=0; 
 end

 elseif y==1
if z==0 
R0001=R000x (1,alpha,A,Farray)  ;

 result =Ay*(R0001);
 elseif z==1
R0002=R000x (2,alpha,A,Farray)  ;

 result =Ay*(Az*(R0002));
 elseif z==2
R0002=R000x (2,alpha,A,Farray)  ;
R0003=R000x (3,alpha,A,Farray)  ;

 result =Ay*((R0002)+Az*(Az*(R0003)));
 elseif z==3
R0003=R000x (3,alpha,A,Farray)  ;
R0004=R000x (4,alpha,A,Farray)  ;

 result =Ay*((2)*(Az*(R0003))+Az*((R0003)+Az*(Az*(R0004))));
elseif z==4 
 R0003=R000x (3,alpha,A,Farray)  ;
R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;

 result =Ay*((3)*((R0003)+Az*(Az*(R0004)))+Az*((2)*(Az*(R0004))+Az*((R0004)+Az*(Az*(R0005)))));
 else 
 result=0; 
 end

 elseif y==2
if z==0 
R0001=R000x (1,alpha,A,Farray)  ;
R0002=R000x (2,alpha,A,Farray)  ;

 result =(R0001)+Ay*(Ay*(R0002));
 elseif z==1
R0002=R000x (2,alpha,A,Farray)  ;
R0003=R000x (3,alpha,A,Farray)  ;

 result =(Az*(R0002))+Ay*(Ay*(Az*(R0003)));
 elseif z==2
R0002=R000x (2,alpha,A,Farray)  ;
R0003=R000x (3,alpha,A,Farray)  ;
R0004=R000x (4,alpha,A,Farray)  ;

 result =((R0002)+Az*(Az*(R0003)))+Ay*(Ay*((R0003)+Az*(Az*(R0004))));
 elseif z==3
R0003=R000x (3,alpha,A,Farray)  ;
R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;

 result =((2)*(Az*(R0003))+Az*((R0003)+Az*(Az*(R0004))))+Ay*(Ay*((2)*(Az*(R0004))+Az*((R0004)+Az*(Az*(R0005)))));
elseif z==4 
 R0003=R000x (3,alpha,A,Farray)  ;
R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;

 result =((3)*((R0003)+Az*(Az*(R0004)))+Az*((2)*(Az*(R0004))+Az*((R0004)+Az*(Az*(R0005)))))+Ay*(Ay*((3)*((R0004)+Az*(Az*(R0005)))+Az*((2)*(Az*(R0005))+Az*((R0005)+Az*(Az*(R0006))))));
 else 
 result=0; 
 end

 elseif y==3
if z==0 
R0002=R000x (2,alpha,A,Farray)  ;
R0003=R000x (3,alpha,A,Farray)  ;

 result =(2)*(Ay*(R0002))+Ay*((R0002)+Ay*(Ay*(R0003)));
 elseif z==1
R0003=R000x (3,alpha,A,Farray)  ;
R0004=R000x (4,alpha,A,Farray)  ;

 result =(2)*(Ay*(Az*(R0003)))+Ay*((Az*(R0003))+Ay*(Ay*(Az*(R0004))));
 elseif z==2
R0003=R000x (3,alpha,A,Farray)  ;
R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;

 result =(2)*(Ay*((R0003)+Az*(Az*(R0004))))+Ay*(((R0003)+Az*(Az*(R0004)))+Ay*(Ay*((R0004)+Az*(Az*(R0005)))));
 elseif z==3
R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;

 result =(2)*(Ay*((2)*(Az*(R0004))+Az*((R0004)+Az*(Az*(R0005)))))+Ay*(((2)*(Az*(R0004))+Az*((R0004)+Az*(Az*(R0005))))+Ay*(Ay*((2)*(Az*(R0005))+Az*((R0005)+Az*(Az*(R0006))))));
elseif z==4 
 R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;
R0007=R000x (7,alpha,A,Farray)  ;

 result =(2)*(Ay*((3)*((R0004)+Az*(Az*(R0005)))+Az*((2)*(Az*(R0005))+Az*((R0005)+Az*(Az*(R0006))))))+Ay*(((3)*((R0004)+Az*(Az*(R0005)))+Az*((2)*(Az*(R0005))+Az*((R0005)+Az*(Az*(R0006)))))+Ay*(Ay*((3)*((R0005)+Az*(Az*(R0006)))+Az*((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007)))))));
 else 
 result=0; 
 end

elseif y==4 
 if z==0 
R0002=R000x (2,alpha,A,Farray)  ;
R0003=R000x (3,alpha,A,Farray)  ;
R0004=R000x (4,alpha,A,Farray)  ;

 result =(3)*((R0002)+Ay*(Ay*(R0003)))+Ay*((2)*(Ay*(R0003))+Ay*((R0003)+Ay*(Ay*(R0004))));
 elseif z==1
R0003=R000x (3,alpha,A,Farray)  ;
R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;

 result =(3)*((Az*(R0003))+Ay*(Ay*(Az*(R0004))))+Ay*((2)*(Ay*(Az*(R0004)))+Ay*((Az*(R0004))+Ay*(Ay*(Az*(R0005)))));
 elseif z==2
R0003=R000x (3,alpha,A,Farray)  ;
R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;

 result =(3)*(((R0003)+Az*(Az*(R0004)))+Ay*(Ay*((R0004)+Az*(Az*(R0005)))))+Ay*((2)*(Ay*((R0004)+Az*(Az*(R0005))))+Ay*(((R0004)+Az*(Az*(R0005)))+Ay*(Ay*((R0005)+Az*(Az*(R0006))))));
 elseif z==3
R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;
R0007=R000x (7,alpha,A,Farray)  ;

 result =(3)*(((2)*(Az*(R0004))+Az*((R0004)+Az*(Az*(R0005))))+Ay*(Ay*((2)*(Az*(R0005))+Az*((R0005)+Az*(Az*(R0006))))))+Ay*((2)*(Ay*((2)*(Az*(R0005))+Az*((R0005)+Az*(Az*(R0006)))))+Ay*(((2)*(Az*(R0005))+Az*((R0005)+Az*(Az*(R0006))))+Ay*(Ay*((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007)))))));
elseif z==4 
 R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;
R0007=R000x (7,alpha,A,Farray)  ;
R0008=R000x (8,alpha,A,Farray)  ;

 result =(3)*(((3)*((R0004)+Az*(Az*(R0005)))+Az*((2)*(Az*(R0005))+Az*((R0005)+Az*(Az*(R0006)))))+Ay*(Ay*((3)*((R0005)+Az*(Az*(R0006)))+Az*((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007)))))))+Ay*((2)*(Ay*((3)*((R0005)+Az*(Az*(R0006)))+Az*((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007))))))+Ay*(((3)*((R0005)+Az*(Az*(R0006)))+Az*((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007)))))+Ay*(Ay*((3)*((R0006)+Az*(Az*(R0007)))+Az*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008))))))));
 else 
 result=0; 
 end

 else 
 result=0; 
 end

 elseif x==1
if y==0 
if z==0 
R0001=R000x (1,alpha,A,Farray)  ;

 result =Ax*(R0001);
 elseif z==1
R0002=R000x (2,alpha,A,Farray)  ;

 result =Ax*(Az*(R0002));
 elseif z==2
R0002=R000x (2,alpha,A,Farray)  ;
R0003=R000x (3,alpha,A,Farray)  ;

 result =Ax*((R0002)+Az*(Az*(R0003)));
 elseif z==3
R0003=R000x (3,alpha,A,Farray)  ;
R0004=R000x (4,alpha,A,Farray)  ;

 result =Ax*((2)*(Az*(R0003))+Az*((R0003)+Az*(Az*(R0004))));
elseif z==4 
 R0003=R000x (3,alpha,A,Farray)  ;
R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;

 result =Ax*((3)*((R0003)+Az*(Az*(R0004)))+Az*((2)*(Az*(R0004))+Az*((R0004)+Az*(Az*(R0005)))));
 else 
 result=0; 
 end

 elseif y==1
if z==0 
R0002=R000x (2,alpha,A,Farray)  ;

 result =Ax*(Ay*(R0002));
 elseif z==1
R0003=R000x (3,alpha,A,Farray)  ;

 result =Ax*(Ay*(Az*(R0003)));
 elseif z==2
R0003=R000x (3,alpha,A,Farray)  ;
R0004=R000x (4,alpha,A,Farray)  ;

 result =Ax*(Ay*((R0003)+Az*(Az*(R0004))));
 elseif z==3
R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;

 result =Ax*(Ay*((2)*(Az*(R0004))+Az*((R0004)+Az*(Az*(R0005)))));
elseif z==4 
 R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;

 result =Ax*(Ay*((3)*((R0004)+Az*(Az*(R0005)))+Az*((2)*(Az*(R0005))+Az*((R0005)+Az*(Az*(R0006))))));
 else 
 result=0; 
 end

 elseif y==2
if z==0 
R0002=R000x (2,alpha,A,Farray)  ;
R0003=R000x (3,alpha,A,Farray)  ;

 result =Ax*((R0002)+Ay*(Ay*(R0003)));
 elseif z==1
R0003=R000x (3,alpha,A,Farray)  ;
R0004=R000x (4,alpha,A,Farray)  ;

 result =Ax*((Az*(R0003))+Ay*(Ay*(Az*(R0004))));
 elseif z==2
R0003=R000x (3,alpha,A,Farray)  ;
R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;

 result =Ax*(((R0003)+Az*(Az*(R0004)))+Ay*(Ay*((R0004)+Az*(Az*(R0005)))));
 elseif z==3
R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;

 result =Ax*(((2)*(Az*(R0004))+Az*((R0004)+Az*(Az*(R0005))))+Ay*(Ay*((2)*(Az*(R0005))+Az*((R0005)+Az*(Az*(R0006))))));
elseif z==4 
 R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;
R0007=R000x (7,alpha,A,Farray)  ;

 result =Ax*(((3)*((R0004)+Az*(Az*(R0005)))+Az*((2)*(Az*(R0005))+Az*((R0005)+Az*(Az*(R0006)))))+Ay*(Ay*((3)*((R0005)+Az*(Az*(R0006)))+Az*((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007)))))));
 else 
 result=0; 
 end

 elseif y==3
if z==0 
R0003=R000x (3,alpha,A,Farray)  ;
R0004=R000x (4,alpha,A,Farray)  ;

 result =Ax*((2)*(Ay*(R0003))+Ay*((R0003)+Ay*(Ay*(R0004))));
 elseif z==1
R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;

 result =Ax*((2)*(Ay*(Az*(R0004)))+Ay*((Az*(R0004))+Ay*(Ay*(Az*(R0005)))));
 elseif z==2
R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;

 result =Ax*((2)*(Ay*((R0004)+Az*(Az*(R0005))))+Ay*(((R0004)+Az*(Az*(R0005)))+Ay*(Ay*((R0005)+Az*(Az*(R0006))))));
 elseif z==3
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;
R0007=R000x (7,alpha,A,Farray)  ;

 result =Ax*((2)*(Ay*((2)*(Az*(R0005))+Az*((R0005)+Az*(Az*(R0006)))))+Ay*(((2)*(Az*(R0005))+Az*((R0005)+Az*(Az*(R0006))))+Ay*(Ay*((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007)))))));
elseif z==4 
 R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;
R0007=R000x (7,alpha,A,Farray)  ;
R0008=R000x (8,alpha,A,Farray)  ;

 result =Ax*((2)*(Ay*((3)*((R0005)+Az*(Az*(R0006)))+Az*((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007))))))+Ay*(((3)*((R0005)+Az*(Az*(R0006)))+Az*((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007)))))+Ay*(Ay*((3)*((R0006)+Az*(Az*(R0007)))+Az*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008))))))));
 else 
 result=0; 
 end

elseif y==4 
 if z==0 
R0003=R000x (3,alpha,A,Farray)  ;
R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;

 result =Ax*((3)*((R0003)+Ay*(Ay*(R0004)))+Ay*((2)*(Ay*(R0004))+Ay*((R0004)+Ay*(Ay*(R0005)))));
 elseif z==1
R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;

 result =Ax*((3)*((Az*(R0004))+Ay*(Ay*(Az*(R0005))))+Ay*((2)*(Ay*(Az*(R0005)))+Ay*((Az*(R0005))+Ay*(Ay*(Az*(R0006))))));
 elseif z==2
R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;
R0007=R000x (7,alpha,A,Farray)  ;

 result =Ax*((3)*(((R0004)+Az*(Az*(R0005)))+Ay*(Ay*((R0005)+Az*(Az*(R0006)))))+Ay*((2)*(Ay*((R0005)+Az*(Az*(R0006))))+Ay*(((R0005)+Az*(Az*(R0006)))+Ay*(Ay*((R0006)+Az*(Az*(R0007)))))));
 elseif z==3
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;
R0007=R000x (7,alpha,A,Farray)  ;
R0008=R000x (8,alpha,A,Farray)  ;

 result =Ax*((3)*(((2)*(Az*(R0005))+Az*((R0005)+Az*(Az*(R0006))))+Ay*(Ay*((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007))))))+Ay*((2)*(Ay*((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007)))))+Ay*(((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007))))+Ay*(Ay*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008))))))));
elseif z==4 
 R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;
R0007=R000x (7,alpha,A,Farray)  ;
R0008=R000x (8,alpha,A,Farray)  ;
R0009=R000x (9,alpha,A,Farray)  ;

 result =Ax*((3)*(((3)*((R0005)+Az*(Az*(R0006)))+Az*((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007)))))+Ay*(Ay*((3)*((R0006)+Az*(Az*(R0007)))+Az*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008)))))))+Ay*((2)*(Ay*((3)*((R0006)+Az*(Az*(R0007)))+Az*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008))))))+Ay*(((3)*((R0006)+Az*(Az*(R0007)))+Az*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008)))))+Ay*(Ay*((3)*((R0007)+Az*(Az*(R0008)))+Az*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009)))))))));
 else 
 result=0; 
 end

 else 
 result=0; 
 end

 elseif x==2
if y==0 
if z==0 
R0001=R000x (1,alpha,A,Farray)  ;
R0002=R000x (2,alpha,A,Farray)  ;

 result =(R0001)+Ax*(Ax*(R0002));
 elseif z==1
R0002=R000x (2,alpha,A,Farray)  ;
R0003=R000x (3,alpha,A,Farray)  ;

 result =(Az*(R0002))+Ax*(Ax*(Az*(R0003)));
 elseif z==2
R0002=R000x (2,alpha,A,Farray)  ;
R0003=R000x (3,alpha,A,Farray)  ;
R0004=R000x (4,alpha,A,Farray)  ;

 result =((R0002)+Az*(Az*(R0003)))+Ax*(Ax*((R0003)+Az*(Az*(R0004))));
 elseif z==3
R0003=R000x (3,alpha,A,Farray)  ;
R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;

 result =((2)*(Az*(R0003))+Az*((R0003)+Az*(Az*(R0004))))+Ax*(Ax*((2)*(Az*(R0004))+Az*((R0004)+Az*(Az*(R0005)))));
elseif z==4 
 R0003=R000x (3,alpha,A,Farray)  ;
R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;

 result =((3)*((R0003)+Az*(Az*(R0004)))+Az*((2)*(Az*(R0004))+Az*((R0004)+Az*(Az*(R0005)))))+Ax*(Ax*((3)*((R0004)+Az*(Az*(R0005)))+Az*((2)*(Az*(R0005))+Az*((R0005)+Az*(Az*(R0006))))));
 else 
 result=0; 
 end

 elseif y==1
if z==0 
R0002=R000x (2,alpha,A,Farray)  ;
R0003=R000x (3,alpha,A,Farray)  ;

 result =(Ay*(R0002))+Ax*(Ax*(Ay*(R0003)));
 elseif z==1
R0003=R000x (3,alpha,A,Farray)  ;
R0004=R000x (4,alpha,A,Farray)  ;

 result =(Ay*(Az*(R0003)))+Ax*(Ax*(Ay*(Az*(R0004))));
 elseif z==2
R0003=R000x (3,alpha,A,Farray)  ;
R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;

 result =(Ay*((R0003)+Az*(Az*(R0004))))+Ax*(Ax*(Ay*((R0004)+Az*(Az*(R0005)))));
 elseif z==3
R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;

 result =(Ay*((2)*(Az*(R0004))+Az*((R0004)+Az*(Az*(R0005)))))+Ax*(Ax*(Ay*((2)*(Az*(R0005))+Az*((R0005)+Az*(Az*(R0006))))));
elseif z==4 
 R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;
R0007=R000x (7,alpha,A,Farray)  ;

 result =(Ay*((3)*((R0004)+Az*(Az*(R0005)))+Az*((2)*(Az*(R0005))+Az*((R0005)+Az*(Az*(R0006))))))+Ax*(Ax*(Ay*((3)*((R0005)+Az*(Az*(R0006)))+Az*((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007)))))));
 else 
 result=0; 
 end

 elseif y==2
if z==0 
R0002=R000x (2,alpha,A,Farray)  ;
R0003=R000x (3,alpha,A,Farray)  ;
R0004=R000x (4,alpha,A,Farray)  ;

 result =((R0002)+Ay*(Ay*(R0003)))+Ax*(Ax*((R0003)+Ay*(Ay*(R0004))));
 elseif z==1
R0003=R000x (3,alpha,A,Farray)  ;
R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;

 result =((Az*(R0003))+Ay*(Ay*(Az*(R0004))))+Ax*(Ax*((Az*(R0004))+Ay*(Ay*(Az*(R0005)))));
 elseif z==2
R0003=R000x (3,alpha,A,Farray)  ;
R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;

 result =(((R0003)+Az*(Az*(R0004)))+Ay*(Ay*((R0004)+Az*(Az*(R0005)))))+Ax*(Ax*(((R0004)+Az*(Az*(R0005)))+Ay*(Ay*((R0005)+Az*(Az*(R0006))))));
 elseif z==3
R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;
R0007=R000x (7,alpha,A,Farray)  ;

 result =(((2)*(Az*(R0004))+Az*((R0004)+Az*(Az*(R0005))))+Ay*(Ay*((2)*(Az*(R0005))+Az*((R0005)+Az*(Az*(R0006))))))+Ax*(Ax*(((2)*(Az*(R0005))+Az*((R0005)+Az*(Az*(R0006))))+Ay*(Ay*((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007)))))));
elseif z==4 
 R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;
R0007=R000x (7,alpha,A,Farray)  ;
R0008=R000x (8,alpha,A,Farray)  ;

 result =(((3)*((R0004)+Az*(Az*(R0005)))+Az*((2)*(Az*(R0005))+Az*((R0005)+Az*(Az*(R0006)))))+Ay*(Ay*((3)*((R0005)+Az*(Az*(R0006)))+Az*((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007)))))))+Ax*(Ax*(((3)*((R0005)+Az*(Az*(R0006)))+Az*((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007)))))+Ay*(Ay*((3)*((R0006)+Az*(Az*(R0007)))+Az*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008))))))));
 else 
 result=0; 
 end

 elseif y==3
if z==0 
R0003=R000x (3,alpha,A,Farray)  ;
R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;

 result =((2)*(Ay*(R0003))+Ay*((R0003)+Ay*(Ay*(R0004))))+Ax*(Ax*((2)*(Ay*(R0004))+Ay*((R0004)+Ay*(Ay*(R0005)))));
 elseif z==1
R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;

 result =((2)*(Ay*(Az*(R0004)))+Ay*((Az*(R0004))+Ay*(Ay*(Az*(R0005)))))+Ax*(Ax*((2)*(Ay*(Az*(R0005)))+Ay*((Az*(R0005))+Ay*(Ay*(Az*(R0006))))));
 elseif z==2
R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;
R0007=R000x (7,alpha,A,Farray)  ;

 result =((2)*(Ay*((R0004)+Az*(Az*(R0005))))+Ay*(((R0004)+Az*(Az*(R0005)))+Ay*(Ay*((R0005)+Az*(Az*(R0006))))))+Ax*(Ax*((2)*(Ay*((R0005)+Az*(Az*(R0006))))+Ay*(((R0005)+Az*(Az*(R0006)))+Ay*(Ay*((R0006)+Az*(Az*(R0007)))))));
 elseif z==3
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;
R0007=R000x (7,alpha,A,Farray)  ;
R0008=R000x (8,alpha,A,Farray)  ;

 result =((2)*(Ay*((2)*(Az*(R0005))+Az*((R0005)+Az*(Az*(R0006)))))+Ay*(((2)*(Az*(R0005))+Az*((R0005)+Az*(Az*(R0006))))+Ay*(Ay*((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007)))))))+Ax*(Ax*((2)*(Ay*((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007)))))+Ay*(((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007))))+Ay*(Ay*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008))))))));
elseif z==4 
 R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;
R0007=R000x (7,alpha,A,Farray)  ;
R0008=R000x (8,alpha,A,Farray)  ;
R0009=R000x (9,alpha,A,Farray)  ;

 result =((2)*(Ay*((3)*((R0005)+Az*(Az*(R0006)))+Az*((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007))))))+Ay*(((3)*((R0005)+Az*(Az*(R0006)))+Az*((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007)))))+Ay*(Ay*((3)*((R0006)+Az*(Az*(R0007)))+Az*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008))))))))+Ax*(Ax*((2)*(Ay*((3)*((R0006)+Az*(Az*(R0007)))+Az*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008))))))+Ay*(((3)*((R0006)+Az*(Az*(R0007)))+Az*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008)))))+Ay*(Ay*((3)*((R0007)+Az*(Az*(R0008)))+Az*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009)))))))));
 else 
 result=0; 
 end

elseif y==4 
 if z==0 
R0003=R000x (3,alpha,A,Farray)  ;
R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;

 result =((3)*((R0003)+Ay*(Ay*(R0004)))+Ay*((2)*(Ay*(R0004))+Ay*((R0004)+Ay*(Ay*(R0005)))))+Ax*(Ax*((3)*((R0004)+Ay*(Ay*(R0005)))+Ay*((2)*(Ay*(R0005))+Ay*((R0005)+Ay*(Ay*(R0006))))));
 elseif z==1
R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;
R0007=R000x (7,alpha,A,Farray)  ;

 result =((3)*((Az*(R0004))+Ay*(Ay*(Az*(R0005))))+Ay*((2)*(Ay*(Az*(R0005)))+Ay*((Az*(R0005))+Ay*(Ay*(Az*(R0006))))))+Ax*(Ax*((3)*((Az*(R0005))+Ay*(Ay*(Az*(R0006))))+Ay*((2)*(Ay*(Az*(R0006)))+Ay*((Az*(R0006))+Ay*(Ay*(Az*(R0007)))))));
 elseif z==2
R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;
R0007=R000x (7,alpha,A,Farray)  ;
R0008=R000x (8,alpha,A,Farray)  ;

 result =((3)*(((R0004)+Az*(Az*(R0005)))+Ay*(Ay*((R0005)+Az*(Az*(R0006)))))+Ay*((2)*(Ay*((R0005)+Az*(Az*(R0006))))+Ay*(((R0005)+Az*(Az*(R0006)))+Ay*(Ay*((R0006)+Az*(Az*(R0007)))))))+Ax*(Ax*((3)*(((R0005)+Az*(Az*(R0006)))+Ay*(Ay*((R0006)+Az*(Az*(R0007)))))+Ay*((2)*(Ay*((R0006)+Az*(Az*(R0007))))+Ay*(((R0006)+Az*(Az*(R0007)))+Ay*(Ay*((R0007)+Az*(Az*(R0008))))))));
 elseif z==3
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;
R0007=R000x (7,alpha,A,Farray)  ;
R0008=R000x (8,alpha,A,Farray)  ;
R0009=R000x (9,alpha,A,Farray)  ;

 result =((3)*(((2)*(Az*(R0005))+Az*((R0005)+Az*(Az*(R0006))))+Ay*(Ay*((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007))))))+Ay*((2)*(Ay*((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007)))))+Ay*(((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007))))+Ay*(Ay*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008))))))))+Ax*(Ax*((3)*(((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007))))+Ay*(Ay*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008))))))+Ay*((2)*(Ay*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008)))))+Ay*(((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008))))+Ay*(Ay*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009)))))))));
elseif z==4 
 
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;
R0007=R000x (7,alpha,A,Farray)  ;
R0008=R000x (8,alpha,A,Farray)  ;
R0009=R000x (9,alpha,A,Farray)  ;
R00010=R000x (10,alpha,A,Farray)  ;

 result =((3)*(((3)*((R0005)+Az*(Az*(R0006)))+Az*((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007)))))+Ay*(Ay*((3)*((R0006)+Az*(Az*(R0007)))+Az*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008)))))))+Ay*((2)*(Ay*((3)*((R0006)+Az*(Az*(R0007)))+Az*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008))))))+Ay*(((3)*((R0006)+Az*(Az*(R0007)))+Az*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008)))))+Ay*(Ay*((3)*((R0007)+Az*(Az*(R0008)))+Az*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009)))))))))+Ax*(Ax*((3)*(((3)*((R0006)+Az*(Az*(R0007)))+Az*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008)))))+Ay*(Ay*((3)*((R0007)+Az*(Az*(R0008)))+Az*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009)))))))+Ay*((2)*(Ay*((3)*((R0007)+Az*(Az*(R0008)))+Az*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009))))))+Ay*(((3)*((R0007)+Az*(Az*(R0008)))+Az*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009)))))+Ay*(Ay*((3)*((R0008)+Az*(Az*(R0009)))+Az*((2)*(Az*(R0009))+Az*((R0009)+Az*(Az*(R00010))))))))));
 else 
 result=0; 
 end

 else 
 result=0; 
 end

 elseif x==3
if y==0 
if z==0 
R0002=R000x (2,alpha,A,Farray)  ;
R0003=R000x (3,alpha,A,Farray)  ;

 result =(2)*(Ax*(R0002))+Ax*((R0002)+Ax*(Ax*(R0003)));
 elseif z==1
R0003=R000x (3,alpha,A,Farray)  ;
R0004=R000x (4,alpha,A,Farray)  ;

 result =(2)*(Ax*(Az*(R0003)))+Ax*((Az*(R0003))+Ax*(Ax*(Az*(R0004))));
 elseif z==2
R0003=R000x (3,alpha,A,Farray)  ;
R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;

 result =(2)*(Ax*((R0003)+Az*(Az*(R0004))))+Ax*(((R0003)+Az*(Az*(R0004)))+Ax*(Ax*((R0004)+Az*(Az*(R0005)))));
 elseif z==3
R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;

 result =(2)*(Ax*((2)*(Az*(R0004))+Az*((R0004)+Az*(Az*(R0005)))))+Ax*(((2)*(Az*(R0004))+Az*((R0004)+Az*(Az*(R0005))))+Ax*(Ax*((2)*(Az*(R0005))+Az*((R0005)+Az*(Az*(R0006))))));
elseif z==4 
 R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;
R0007=R000x (7,alpha,A,Farray)  ;

 result =(2)*(Ax*((3)*((R0004)+Az*(Az*(R0005)))+Az*((2)*(Az*(R0005))+Az*((R0005)+Az*(Az*(R0006))))))+Ax*(((3)*((R0004)+Az*(Az*(R0005)))+Az*((2)*(Az*(R0005))+Az*((R0005)+Az*(Az*(R0006)))))+Ax*(Ax*((3)*((R0005)+Az*(Az*(R0006)))+Az*((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007)))))));
 else 
 result=0; 
 end

 elseif y==1
if z==0 
R0003=R000x (3,alpha,A,Farray)  ;
R0004=R000x (4,alpha,A,Farray)  ;

 result =(2)*(Ax*(Ay*(R0003)))+Ax*((Ay*(R0003))+Ax*(Ax*(Ay*(R0004))));
 elseif z==1
R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;

 result =(2)*(Ax*(Ay*(Az*(R0004))))+Ax*((Ay*(Az*(R0004)))+Ax*(Ax*(Ay*(Az*(R0005)))));
 elseif z==2
R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;

 result =(2)*(Ax*(Ay*((R0004)+Az*(Az*(R0005)))))+Ax*((Ay*((R0004)+Az*(Az*(R0005))))+Ax*(Ax*(Ay*((R0005)+Az*(Az*(R0006))))));
 elseif z==3
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;
R0007=R000x (7,alpha,A,Farray)  ;

 result =(2)*(Ax*(Ay*((2)*(Az*(R0005))+Az*((R0005)+Az*(Az*(R0006))))))+Ax*((Ay*((2)*(Az*(R0005))+Az*((R0005)+Az*(Az*(R0006)))))+Ax*(Ax*(Ay*((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007)))))));
elseif z==4 
 R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;
R0007=R000x (7,alpha,A,Farray)  ;
R0008=R000x (8,alpha,A,Farray)  ;

 result =(2)*(Ax*(Ay*((3)*((R0005)+Az*(Az*(R0006)))+Az*((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007)))))))+Ax*((Ay*((3)*((R0005)+Az*(Az*(R0006)))+Az*((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007))))))+Ax*(Ax*(Ay*((3)*((R0006)+Az*(Az*(R0007)))+Az*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008))))))));
 else 
 result=0; 
 end

 elseif y==2
if z==0 
R0003=R000x (3,alpha,A,Farray)  ;
R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;

 result =(2)*(Ax*((R0003)+Ay*(Ay*(R0004))))+Ax*(((R0003)+Ay*(Ay*(R0004)))+Ax*(Ax*((R0004)+Ay*(Ay*(R0005)))));
 elseif z==1
R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;

 result =(2)*(Ax*((Az*(R0004))+Ay*(Ay*(Az*(R0005)))))+Ax*(((Az*(R0004))+Ay*(Ay*(Az*(R0005))))+Ax*(Ax*((Az*(R0005))+Ay*(Ay*(Az*(R0006))))));
 elseif z==2
R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;
R0007=R000x (7,alpha,A,Farray)  ;

 result =(2)*(Ax*(((R0004)+Az*(Az*(R0005)))+Ay*(Ay*((R0005)+Az*(Az*(R0006))))))+Ax*((((R0004)+Az*(Az*(R0005)))+Ay*(Ay*((R0005)+Az*(Az*(R0006)))))+Ax*(Ax*(((R0005)+Az*(Az*(R0006)))+Ay*(Ay*((R0006)+Az*(Az*(R0007)))))));
 elseif z==3
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;
R0007=R000x (7,alpha,A,Farray)  ;
R0008=R000x (8,alpha,A,Farray)  ;

 result =(2)*(Ax*(((2)*(Az*(R0005))+Az*((R0005)+Az*(Az*(R0006))))+Ay*(Ay*((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007)))))))+Ax*((((2)*(Az*(R0005))+Az*((R0005)+Az*(Az*(R0006))))+Ay*(Ay*((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007))))))+Ax*(Ax*(((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007))))+Ay*(Ay*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008))))))));
elseif z==4 
 R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;
R0007=R000x (7,alpha,A,Farray)  ;
R0008=R000x (8,alpha,A,Farray)  ;
R0009=R000x (9,alpha,A,Farray)  ;

 result =(2)*(Ax*(((3)*((R0005)+Az*(Az*(R0006)))+Az*((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007)))))+Ay*(Ay*((3)*((R0006)+Az*(Az*(R0007)))+Az*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008))))))))+Ax*((((3)*((R0005)+Az*(Az*(R0006)))+Az*((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007)))))+Ay*(Ay*((3)*((R0006)+Az*(Az*(R0007)))+Az*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008)))))))+Ax*(Ax*(((3)*((R0006)+Az*(Az*(R0007)))+Az*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008)))))+Ay*(Ay*((3)*((R0007)+Az*(Az*(R0008)))+Az*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009)))))))));
 else 
 result=0; 
 end

 elseif y==3
if z==0 
R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;

 result =(2)*(Ax*((2)*(Ay*(R0004))+Ay*((R0004)+Ay*(Ay*(R0005)))))+Ax*(((2)*(Ay*(R0004))+Ay*((R0004)+Ay*(Ay*(R0005))))+Ax*(Ax*((2)*(Ay*(R0005))+Ay*((R0005)+Ay*(Ay*(R0006))))));
 elseif z==1
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;
R0007=R000x (7,alpha,A,Farray)  ;

 result =(2)*(Ax*((2)*(Ay*(Az*(R0005)))+Ay*((Az*(R0005))+Ay*(Ay*(Az*(R0006))))))+Ax*(((2)*(Ay*(Az*(R0005)))+Ay*((Az*(R0005))+Ay*(Ay*(Az*(R0006)))))+Ax*(Ax*((2)*(Ay*(Az*(R0006)))+Ay*((Az*(R0006))+Ay*(Ay*(Az*(R0007)))))));
 elseif z==2
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;
R0007=R000x (7,alpha,A,Farray)  ;
R0008=R000x (8,alpha,A,Farray)  ;

 result =(2)*(Ax*((2)*(Ay*((R0005)+Az*(Az*(R0006))))+Ay*(((R0005)+Az*(Az*(R0006)))+Ay*(Ay*((R0006)+Az*(Az*(R0007)))))))+Ax*(((2)*(Ay*((R0005)+Az*(Az*(R0006))))+Ay*(((R0005)+Az*(Az*(R0006)))+Ay*(Ay*((R0006)+Az*(Az*(R0007))))))+Ax*(Ax*((2)*(Ay*((R0006)+Az*(Az*(R0007))))+Ay*(((R0006)+Az*(Az*(R0007)))+Ay*(Ay*((R0007)+Az*(Az*(R0008))))))));
 elseif z==3
R0006=R000x (6,alpha,A,Farray)  ;
R0007=R000x (7,alpha,A,Farray)  ;
R0008=R000x (8,alpha,A,Farray)  ;
R0009=R000x (9,alpha,A,Farray)  ;

 result =(2)*(Ax*((2)*(Ay*((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007)))))+Ay*(((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007))))+Ay*(Ay*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008))))))))+Ax*(((2)*(Ay*((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007)))))+Ay*(((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007))))+Ay*(Ay*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008)))))))+Ax*(Ax*((2)*(Ay*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008)))))+Ay*(((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008))))+Ay*(Ay*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009)))))))));
elseif z==4 
 
R0006=R000x (6,alpha,A,Farray)  ;
R0007=R000x (7,alpha,A,Farray)  ;
R0008=R000x (8,alpha,A,Farray)  ;
R0009=R000x (9,alpha,A,Farray)  ;
R00010=R000x (10,alpha,A,Farray)  ;

 result =(2)*(Ax*((2)*(Ay*((3)*((R0006)+Az*(Az*(R0007)))+Az*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008))))))+Ay*(((3)*((R0006)+Az*(Az*(R0007)))+Az*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008)))))+Ay*(Ay*((3)*((R0007)+Az*(Az*(R0008)))+Az*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009)))))))))+Ax*(((2)*(Ay*((3)*((R0006)+Az*(Az*(R0007)))+Az*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008))))))+Ay*(((3)*((R0006)+Az*(Az*(R0007)))+Az*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008)))))+Ay*(Ay*((3)*((R0007)+Az*(Az*(R0008)))+Az*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009))))))))+Ax*(Ax*((2)*(Ay*((3)*((R0007)+Az*(Az*(R0008)))+Az*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009))))))+Ay*(((3)*((R0007)+Az*(Az*(R0008)))+Az*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009)))))+Ay*(Ay*((3)*((R0008)+Az*(Az*(R0009)))+Az*((2)*(Az*(R0009))+Az*((R0009)+Az*(Az*(R00010))))))))));
 else 
 result=0; 
 end

elseif y==4 
 if z==0 
R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;
R0007=R000x (7,alpha,A,Farray)  ;

 result =(2)*(Ax*((3)*((R0004)+Ay*(Ay*(R0005)))+Ay*((2)*(Ay*(R0005))+Ay*((R0005)+Ay*(Ay*(R0006))))))+Ax*(((3)*((R0004)+Ay*(Ay*(R0005)))+Ay*((2)*(Ay*(R0005))+Ay*((R0005)+Ay*(Ay*(R0006)))))+Ax*(Ax*((3)*((R0005)+Ay*(Ay*(R0006)))+Ay*((2)*(Ay*(R0006))+Ay*((R0006)+Ay*(Ay*(R0007)))))));
 elseif z==1
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;
R0007=R000x (7,alpha,A,Farray)  ;
R0008=R000x (8,alpha,A,Farray)  ;

 result =(2)*(Ax*((3)*((Az*(R0005))+Ay*(Ay*(Az*(R0006))))+Ay*((2)*(Ay*(Az*(R0006)))+Ay*((Az*(R0006))+Ay*(Ay*(Az*(R0007)))))))+Ax*(((3)*((Az*(R0005))+Ay*(Ay*(Az*(R0006))))+Ay*((2)*(Ay*(Az*(R0006)))+Ay*((Az*(R0006))+Ay*(Ay*(Az*(R0007))))))+Ax*(Ax*((3)*((Az*(R0006))+Ay*(Ay*(Az*(R0007))))+Ay*((2)*(Ay*(Az*(R0007)))+Ay*((Az*(R0007))+Ay*(Ay*(Az*(R0008))))))));
 elseif z==2
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;
R0007=R000x (7,alpha,A,Farray)  ;
R0008=R000x (8,alpha,A,Farray)  ;
R0009=R000x (9,alpha,A,Farray)  ;

 result =(2)*(Ax*((3)*(((R0005)+Az*(Az*(R0006)))+Ay*(Ay*((R0006)+Az*(Az*(R0007)))))+Ay*((2)*(Ay*((R0006)+Az*(Az*(R0007))))+Ay*(((R0006)+Az*(Az*(R0007)))+Ay*(Ay*((R0007)+Az*(Az*(R0008))))))))+Ax*(((3)*(((R0005)+Az*(Az*(R0006)))+Ay*(Ay*((R0006)+Az*(Az*(R0007)))))+Ay*((2)*(Ay*((R0006)+Az*(Az*(R0007))))+Ay*(((R0006)+Az*(Az*(R0007)))+Ay*(Ay*((R0007)+Az*(Az*(R0008)))))))+Ax*(Ax*((3)*(((R0006)+Az*(Az*(R0007)))+Ay*(Ay*((R0007)+Az*(Az*(R0008)))))+Ay*((2)*(Ay*((R0007)+Az*(Az*(R0008))))+Ay*(((R0007)+Az*(Az*(R0008)))+Ay*(Ay*((R0008)+Az*(Az*(R0009)))))))));
 elseif z==3
 
R0006=R000x (6,alpha,A,Farray)  ;
R0007=R000x (7,alpha,A,Farray)  ;
R0008=R000x (8,alpha,A,Farray)  ;
R0009=R000x (9,alpha,A,Farray)  ;
R00010=R000x (10,alpha,A,Farray)  ;

 result =(2)*(Ax*((3)*(((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007))))+Ay*(Ay*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008))))))+Ay*((2)*(Ay*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008)))))+Ay*(((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008))))+Ay*(Ay*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009)))))))))+Ax*(((3)*(((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007))))+Ay*(Ay*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008))))))+Ay*((2)*(Ay*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008)))))+Ay*(((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008))))+Ay*(Ay*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009))))))))+Ax*(Ax*((3)*(((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008))))+Ay*(Ay*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009))))))+Ay*((2)*(Ay*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009)))))+Ay*(((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009))))+Ay*(Ay*((2)*(Az*(R0009))+Az*((R0009)+Az*(Az*(R00010))))))))));
elseif z==4 
 
R0006=R000x (6,alpha,A,Farray)  ;
R0007=R000x (7,alpha,A,Farray)  ;
R0008=R000x (8,alpha,A,Farray)  ;
R0009=R000x (9,alpha,A,Farray)  ;
R00010=R000x (10,alpha,A,Farray)  ;
R00011=R000x (11,alpha,A,Farray)  ;

 result =(2)*(Ax*((3)*(((3)*((R0006)+Az*(Az*(R0007)))+Az*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008)))))+Ay*(Ay*((3)*((R0007)+Az*(Az*(R0008)))+Az*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009)))))))+Ay*((2)*(Ay*((3)*((R0007)+Az*(Az*(R0008)))+Az*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009))))))+Ay*(((3)*((R0007)+Az*(Az*(R0008)))+Az*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009)))))+Ay*(Ay*((3)*((R0008)+Az*(Az*(R0009)))+Az*((2)*(Az*(R0009))+Az*((R0009)+Az*(Az*(R00010))))))))))+Ax*(((3)*(((3)*((R0006)+Az*(Az*(R0007)))+Az*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008)))))+Ay*(Ay*((3)*((R0007)+Az*(Az*(R0008)))+Az*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009)))))))+Ay*((2)*(Ay*((3)*((R0007)+Az*(Az*(R0008)))+Az*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009))))))+Ay*(((3)*((R0007)+Az*(Az*(R0008)))+Az*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009)))))+Ay*(Ay*((3)*((R0008)+Az*(Az*(R0009)))+Az*((2)*(Az*(R0009))+Az*((R0009)+Az*(Az*(R00010)))))))))+Ax*(Ax*((3)*(((3)*((R0007)+Az*(Az*(R0008)))+Az*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009)))))+Ay*(Ay*((3)*((R0008)+Az*(Az*(R0009)))+Az*((2)*(Az*(R0009))+Az*((R0009)+Az*(Az*(R00010)))))))+Ay*((2)*(Ay*((3)*((R0008)+Az*(Az*(R0009)))+Az*((2)*(Az*(R0009))+Az*((R0009)+Az*(Az*(R00010))))))+Ay*(((3)*((R0008)+Az*(Az*(R0009)))+Az*((2)*(Az*(R0009))+Az*((R0009)+Az*(Az*(R00010)))))+Ay*(Ay*((3)*((R0009)+Az*(Az*(R00010)))+Az*((2)*(Az*(R00010))+Az*((R00010)+Az*(Az*(R00011)))))))))));
 else 
 result=0; 
 end

 else 
 result=0; 
 end

elseif x==4 
 if y==0 
if z==0 
R0002=R000x (2,alpha,A,Farray)  ;
R0003=R000x (3,alpha,A,Farray)  ;
R0004=R000x (4,alpha,A,Farray)  ;

 result =(3)*((R0002)+Ax*(Ax*(R0003)))+Ax*((2)*(Ax*(R0003))+Ax*((R0003)+Ax*(Ax*(R0004))));
 elseif z==1
R0003=R000x (3,alpha,A,Farray)  ;
R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;

 result =(3)*((Az*(R0003))+Ax*(Ax*(Az*(R0004))))+Ax*((2)*(Ax*(Az*(R0004)))+Ax*((Az*(R0004))+Ax*(Ax*(Az*(R0005)))));
 elseif z==2
R0003=R000x (3,alpha,A,Farray)  ;
R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;

 result =(3)*(((R0003)+Az*(Az*(R0004)))+Ax*(Ax*((R0004)+Az*(Az*(R0005)))))+Ax*((2)*(Ax*((R0004)+Az*(Az*(R0005))))+Ax*(((R0004)+Az*(Az*(R0005)))+Ax*(Ax*((R0005)+Az*(Az*(R0006))))));
 elseif z==3
R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;
R0007=R000x (7,alpha,A,Farray)  ;

 result =(3)*(((2)*(Az*(R0004))+Az*((R0004)+Az*(Az*(R0005))))+Ax*(Ax*((2)*(Az*(R0005))+Az*((R0005)+Az*(Az*(R0006))))))+Ax*((2)*(Ax*((2)*(Az*(R0005))+Az*((R0005)+Az*(Az*(R0006)))))+Ax*(((2)*(Az*(R0005))+Az*((R0005)+Az*(Az*(R0006))))+Ax*(Ax*((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007)))))));
elseif z==4 
 R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;
R0007=R000x (7,alpha,A,Farray)  ;
R0008=R000x (8,alpha,A,Farray)  ;

 result =(3)*(((3)*((R0004)+Az*(Az*(R0005)))+Az*((2)*(Az*(R0005))+Az*((R0005)+Az*(Az*(R0006)))))+Ax*(Ax*((3)*((R0005)+Az*(Az*(R0006)))+Az*((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007)))))))+Ax*((2)*(Ax*((3)*((R0005)+Az*(Az*(R0006)))+Az*((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007))))))+Ax*(((3)*((R0005)+Az*(Az*(R0006)))+Az*((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007)))))+Ax*(Ax*((3)*((R0006)+Az*(Az*(R0007)))+Az*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008))))))));
 else 
 result=0; 
 end

 elseif y==1
if z==0 
R0003=R000x (3,alpha,A,Farray)  ;
R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;

 result =(3)*((Ay*(R0003))+Ax*(Ax*(Ay*(R0004))))+Ax*((2)*(Ax*(Ay*(R0004)))+Ax*((Ay*(R0004))+Ax*(Ax*(Ay*(R0005)))));
 elseif z==1
R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;

 result =(3)*((Ay*(Az*(R0004)))+Ax*(Ax*(Ay*(Az*(R0005)))))+Ax*((2)*(Ax*(Ay*(Az*(R0005))))+Ax*((Ay*(Az*(R0005)))+Ax*(Ax*(Ay*(Az*(R0006))))));
 elseif z==2
R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;
R0007=R000x (7,alpha,A,Farray)  ;

 result =(3)*((Ay*((R0004)+Az*(Az*(R0005))))+Ax*(Ax*(Ay*((R0005)+Az*(Az*(R0006))))))+Ax*((2)*(Ax*(Ay*((R0005)+Az*(Az*(R0006)))))+Ax*((Ay*((R0005)+Az*(Az*(R0006))))+Ax*(Ax*(Ay*((R0006)+Az*(Az*(R0007)))))));
 elseif z==3
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;
R0007=R000x (7,alpha,A,Farray)  ;
R0008=R000x (8,alpha,A,Farray)  ;

 result =(3)*((Ay*((2)*(Az*(R0005))+Az*((R0005)+Az*(Az*(R0006)))))+Ax*(Ax*(Ay*((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007)))))))+Ax*((2)*(Ax*(Ay*((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007))))))+Ax*((Ay*((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007)))))+Ax*(Ax*(Ay*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008))))))));
elseif z==4 
 R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;
R0007=R000x (7,alpha,A,Farray)  ;
R0008=R000x (8,alpha,A,Farray)  ;
R0009=R000x (9,alpha,A,Farray)  ;

 result =(3)*((Ay*((3)*((R0005)+Az*(Az*(R0006)))+Az*((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007))))))+Ax*(Ax*(Ay*((3)*((R0006)+Az*(Az*(R0007)))+Az*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008))))))))+Ax*((2)*(Ax*(Ay*((3)*((R0006)+Az*(Az*(R0007)))+Az*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008)))))))+Ax*((Ay*((3)*((R0006)+Az*(Az*(R0007)))+Az*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008))))))+Ax*(Ax*(Ay*((3)*((R0007)+Az*(Az*(R0008)))+Az*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009)))))))));
 else 
 result=0; 
 end

 elseif y==2
if z==0 
R0003=R000x (3,alpha,A,Farray)  ;
R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;

 result =(3)*(((R0003)+Ay*(Ay*(R0004)))+Ax*(Ax*((R0004)+Ay*(Ay*(R0005)))))+Ax*((2)*(Ax*((R0004)+Ay*(Ay*(R0005))))+Ax*(((R0004)+Ay*(Ay*(R0005)))+Ax*(Ax*((R0005)+Ay*(Ay*(R0006))))));
 elseif z==1
R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;
R0007=R000x (7,alpha,A,Farray)  ;

 result =(3)*(((Az*(R0004))+Ay*(Ay*(Az*(R0005))))+Ax*(Ax*((Az*(R0005))+Ay*(Ay*(Az*(R0006))))))+Ax*((2)*(Ax*((Az*(R0005))+Ay*(Ay*(Az*(R0006)))))+Ax*(((Az*(R0005))+Ay*(Ay*(Az*(R0006))))+Ax*(Ax*((Az*(R0006))+Ay*(Ay*(Az*(R0007)))))));
 elseif z==2
R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;
R0007=R000x (7,alpha,A,Farray)  ;
R0008=R000x (8,alpha,A,Farray)  ;

 result =(3)*((((R0004)+Az*(Az*(R0005)))+Ay*(Ay*((R0005)+Az*(Az*(R0006)))))+Ax*(Ax*(((R0005)+Az*(Az*(R0006)))+Ay*(Ay*((R0006)+Az*(Az*(R0007)))))))+Ax*((2)*(Ax*(((R0005)+Az*(Az*(R0006)))+Ay*(Ay*((R0006)+Az*(Az*(R0007))))))+Ax*((((R0005)+Az*(Az*(R0006)))+Ay*(Ay*((R0006)+Az*(Az*(R0007)))))+Ax*(Ax*(((R0006)+Az*(Az*(R0007)))+Ay*(Ay*((R0007)+Az*(Az*(R0008))))))));
 elseif z==3
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;
R0007=R000x (7,alpha,A,Farray)  ;
R0008=R000x (8,alpha,A,Farray)  ;
R0009=R000x (9,alpha,A,Farray)  ;

 result =(3)*((((2)*(Az*(R0005))+Az*((R0005)+Az*(Az*(R0006))))+Ay*(Ay*((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007))))))+Ax*(Ax*(((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007))))+Ay*(Ay*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008))))))))+Ax*((2)*(Ax*(((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007))))+Ay*(Ay*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008)))))))+Ax*((((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007))))+Ay*(Ay*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008))))))+Ax*(Ax*(((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008))))+Ay*(Ay*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009)))))))));
elseif z==4 
 
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;
R0007=R000x (7,alpha,A,Farray)  ;
R0008=R000x (8,alpha,A,Farray)  ;
R0009=R000x (9,alpha,A,Farray)  ;
R00010=R000x (10,alpha,A,Farray)  ;

 result =(3)*((((3)*((R0005)+Az*(Az*(R0006)))+Az*((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007)))))+Ay*(Ay*((3)*((R0006)+Az*(Az*(R0007)))+Az*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008)))))))+Ax*(Ax*(((3)*((R0006)+Az*(Az*(R0007)))+Az*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008)))))+Ay*(Ay*((3)*((R0007)+Az*(Az*(R0008)))+Az*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009)))))))))+Ax*((2)*(Ax*(((3)*((R0006)+Az*(Az*(R0007)))+Az*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008)))))+Ay*(Ay*((3)*((R0007)+Az*(Az*(R0008)))+Az*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009))))))))+Ax*((((3)*((R0006)+Az*(Az*(R0007)))+Az*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008)))))+Ay*(Ay*((3)*((R0007)+Az*(Az*(R0008)))+Az*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009)))))))+Ax*(Ax*(((3)*((R0007)+Az*(Az*(R0008)))+Az*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009)))))+Ay*(Ay*((3)*((R0008)+Az*(Az*(R0009)))+Az*((2)*(Az*(R0009))+Az*((R0009)+Az*(Az*(R00010))))))))));
 else 
 result=0; 
 end

 elseif y==3
if z==0 
R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;
R0007=R000x (7,alpha,A,Farray)  ;

 result =(3)*(((2)*(Ay*(R0004))+Ay*((R0004)+Ay*(Ay*(R0005))))+Ax*(Ax*((2)*(Ay*(R0005))+Ay*((R0005)+Ay*(Ay*(R0006))))))+Ax*((2)*(Ax*((2)*(Ay*(R0005))+Ay*((R0005)+Ay*(Ay*(R0006)))))+Ax*(((2)*(Ay*(R0005))+Ay*((R0005)+Ay*(Ay*(R0006))))+Ax*(Ax*((2)*(Ay*(R0006))+Ay*((R0006)+Ay*(Ay*(R0007)))))));
 elseif z==1
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;
R0007=R000x (7,alpha,A,Farray)  ;
R0008=R000x (8,alpha,A,Farray)  ;

 result =(3)*(((2)*(Ay*(Az*(R0005)))+Ay*((Az*(R0005))+Ay*(Ay*(Az*(R0006)))))+Ax*(Ax*((2)*(Ay*(Az*(R0006)))+Ay*((Az*(R0006))+Ay*(Ay*(Az*(R0007)))))))+Ax*((2)*(Ax*((2)*(Ay*(Az*(R0006)))+Ay*((Az*(R0006))+Ay*(Ay*(Az*(R0007))))))+Ax*(((2)*(Ay*(Az*(R0006)))+Ay*((Az*(R0006))+Ay*(Ay*(Az*(R0007)))))+Ax*(Ax*((2)*(Ay*(Az*(R0007)))+Ay*((Az*(R0007))+Ay*(Ay*(Az*(R0008))))))));
 elseif z==2
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;
R0007=R000x (7,alpha,A,Farray)  ;
R0008=R000x (8,alpha,A,Farray)  ;
R0009=R000x (9,alpha,A,Farray)  ;

 result =(3)*(((2)*(Ay*((R0005)+Az*(Az*(R0006))))+Ay*(((R0005)+Az*(Az*(R0006)))+Ay*(Ay*((R0006)+Az*(Az*(R0007))))))+Ax*(Ax*((2)*(Ay*((R0006)+Az*(Az*(R0007))))+Ay*(((R0006)+Az*(Az*(R0007)))+Ay*(Ay*((R0007)+Az*(Az*(R0008))))))))+Ax*((2)*(Ax*((2)*(Ay*((R0006)+Az*(Az*(R0007))))+Ay*(((R0006)+Az*(Az*(R0007)))+Ay*(Ay*((R0007)+Az*(Az*(R0008)))))))+Ax*(((2)*(Ay*((R0006)+Az*(Az*(R0007))))+Ay*(((R0006)+Az*(Az*(R0007)))+Ay*(Ay*((R0007)+Az*(Az*(R0008))))))+Ax*(Ax*((2)*(Ay*((R0007)+Az*(Az*(R0008))))+Ay*(((R0007)+Az*(Az*(R0008)))+Ay*(Ay*((R0008)+Az*(Az*(R0009)))))))));
 elseif z==3
 
R0006=R000x (6,alpha,A,Farray)  ;
R0007=R000x (7,alpha,A,Farray)  ;
R0008=R000x (8,alpha,A,Farray)  ;
R0009=R000x (9,alpha,A,Farray)  ;
R00010=R000x (10,alpha,A,Farray)  ;

 result =(3)*(((2)*(Ay*((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007)))))+Ay*(((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007))))+Ay*(Ay*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008)))))))+Ax*(Ax*((2)*(Ay*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008)))))+Ay*(((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008))))+Ay*(Ay*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009)))))))))+Ax*((2)*(Ax*((2)*(Ay*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008)))))+Ay*(((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008))))+Ay*(Ay*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009))))))))+Ax*(((2)*(Ay*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008)))))+Ay*(((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008))))+Ay*(Ay*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009)))))))+Ax*(Ax*((2)*(Ay*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009)))))+Ay*(((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009))))+Ay*(Ay*((2)*(Az*(R0009))+Az*((R0009)+Az*(Az*(R00010))))))))));
elseif z==4 
 
R0006=R000x (6,alpha,A,Farray)  ;
R0007=R000x (7,alpha,A,Farray)  ;
R0008=R000x (8,alpha,A,Farray)  ;
R0009=R000x (9,alpha,A,Farray)  ;
R00010=R000x (10,alpha,A,Farray)  ;
R00011=R000x (11,alpha,A,Farray)  ;

 result =(3)*(((2)*(Ay*((3)*((R0006)+Az*(Az*(R0007)))+Az*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008))))))+Ay*(((3)*((R0006)+Az*(Az*(R0007)))+Az*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008)))))+Ay*(Ay*((3)*((R0007)+Az*(Az*(R0008)))+Az*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009))))))))+Ax*(Ax*((2)*(Ay*((3)*((R0007)+Az*(Az*(R0008)))+Az*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009))))))+Ay*(((3)*((R0007)+Az*(Az*(R0008)))+Az*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009)))))+Ay*(Ay*((3)*((R0008)+Az*(Az*(R0009)))+Az*((2)*(Az*(R0009))+Az*((R0009)+Az*(Az*(R00010))))))))))+Ax*((2)*(Ax*((2)*(Ay*((3)*((R0007)+Az*(Az*(R0008)))+Az*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009))))))+Ay*(((3)*((R0007)+Az*(Az*(R0008)))+Az*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009)))))+Ay*(Ay*((3)*((R0008)+Az*(Az*(R0009)))+Az*((2)*(Az*(R0009))+Az*((R0009)+Az*(Az*(R00010)))))))))+Ax*(((2)*(Ay*((3)*((R0007)+Az*(Az*(R0008)))+Az*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009))))))+Ay*(((3)*((R0007)+Az*(Az*(R0008)))+Az*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009)))))+Ay*(Ay*((3)*((R0008)+Az*(Az*(R0009)))+Az*((2)*(Az*(R0009))+Az*((R0009)+Az*(Az*(R00010))))))))+Ax*(Ax*((2)*(Ay*((3)*((R0008)+Az*(Az*(R0009)))+Az*((2)*(Az*(R0009))+Az*((R0009)+Az*(Az*(R00010))))))+Ay*(((3)*((R0008)+Az*(Az*(R0009)))+Az*((2)*(Az*(R0009))+Az*((R0009)+Az*(Az*(R00010)))))+Ay*(Ay*((3)*((R0009)+Az*(Az*(R00010)))+Az*((2)*(Az*(R00010))+Az*((R00010)+Az*(Az*(R00011)))))))))));
 else 
 result=0; 
 end

elseif y==4 
 if z==0 
R0004=R000x (4,alpha,A,Farray)  ;
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;
R0007=R000x (7,alpha,A,Farray)  ;
R0008=R000x (8,alpha,A,Farray)  ;

 result =(3)*(((3)*((R0004)+Ay*(Ay*(R0005)))+Ay*((2)*(Ay*(R0005))+Ay*((R0005)+Ay*(Ay*(R0006)))))+Ax*(Ax*((3)*((R0005)+Ay*(Ay*(R0006)))+Ay*((2)*(Ay*(R0006))+Ay*((R0006)+Ay*(Ay*(R0007)))))))+Ax*((2)*(Ax*((3)*((R0005)+Ay*(Ay*(R0006)))+Ay*((2)*(Ay*(R0006))+Ay*((R0006)+Ay*(Ay*(R0007))))))+Ax*(((3)*((R0005)+Ay*(Ay*(R0006)))+Ay*((2)*(Ay*(R0006))+Ay*((R0006)+Ay*(Ay*(R0007)))))+Ax*(Ax*((3)*((R0006)+Ay*(Ay*(R0007)))+Ay*((2)*(Ay*(R0007))+Ay*((R0007)+Ay*(Ay*(R0008))))))));
 elseif z==1
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;
R0007=R000x (7,alpha,A,Farray)  ;
R0008=R000x (8,alpha,A,Farray)  ;
R0009=R000x (9,alpha,A,Farray)  ;

 result =(3)*(((3)*((Az*(R0005))+Ay*(Ay*(Az*(R0006))))+Ay*((2)*(Ay*(Az*(R0006)))+Ay*((Az*(R0006))+Ay*(Ay*(Az*(R0007))))))+Ax*(Ax*((3)*((Az*(R0006))+Ay*(Ay*(Az*(R0007))))+Ay*((2)*(Ay*(Az*(R0007)))+Ay*((Az*(R0007))+Ay*(Ay*(Az*(R0008))))))))+Ax*((2)*(Ax*((3)*((Az*(R0006))+Ay*(Ay*(Az*(R0007))))+Ay*((2)*(Ay*(Az*(R0007)))+Ay*((Az*(R0007))+Ay*(Ay*(Az*(R0008)))))))+Ax*(((3)*((Az*(R0006))+Ay*(Ay*(Az*(R0007))))+Ay*((2)*(Ay*(Az*(R0007)))+Ay*((Az*(R0007))+Ay*(Ay*(Az*(R0008))))))+Ax*(Ax*((3)*((Az*(R0007))+Ay*(Ay*(Az*(R0008))))+Ay*((2)*(Ay*(Az*(R0008)))+Ay*((Az*(R0008))+Ay*(Ay*(Az*(R0009)))))))));
 elseif z==2
 
R0005=R000x (5,alpha,A,Farray)  ;
R0006=R000x (6,alpha,A,Farray)  ;
R0007=R000x (7,alpha,A,Farray)  ;
R0008=R000x (8,alpha,A,Farray)  ;
R0009=R000x (9,alpha,A,Farray)  ;
R00010=R000x (10,alpha,A,Farray)  ;

 result =(3)*(((3)*(((R0005)+Az*(Az*(R0006)))+Ay*(Ay*((R0006)+Az*(Az*(R0007)))))+Ay*((2)*(Ay*((R0006)+Az*(Az*(R0007))))+Ay*(((R0006)+Az*(Az*(R0007)))+Ay*(Ay*((R0007)+Az*(Az*(R0008)))))))+Ax*(Ax*((3)*(((R0006)+Az*(Az*(R0007)))+Ay*(Ay*((R0007)+Az*(Az*(R0008)))))+Ay*((2)*(Ay*((R0007)+Az*(Az*(R0008))))+Ay*(((R0007)+Az*(Az*(R0008)))+Ay*(Ay*((R0008)+Az*(Az*(R0009)))))))))+Ax*((2)*(Ax*((3)*(((R0006)+Az*(Az*(R0007)))+Ay*(Ay*((R0007)+Az*(Az*(R0008)))))+Ay*((2)*(Ay*((R0007)+Az*(Az*(R0008))))+Ay*(((R0007)+Az*(Az*(R0008)))+Ay*(Ay*((R0008)+Az*(Az*(R0009))))))))+Ax*(((3)*(((R0006)+Az*(Az*(R0007)))+Ay*(Ay*((R0007)+Az*(Az*(R0008)))))+Ay*((2)*(Ay*((R0007)+Az*(Az*(R0008))))+Ay*(((R0007)+Az*(Az*(R0008)))+Ay*(Ay*((R0008)+Az*(Az*(R0009)))))))+Ax*(Ax*((3)*(((R0007)+Az*(Az*(R0008)))+Ay*(Ay*((R0008)+Az*(Az*(R0009)))))+Ay*((2)*(Ay*((R0008)+Az*(Az*(R0009))))+Ay*(((R0008)+Az*(Az*(R0009)))+Ay*(Ay*((R0009)+Az*(Az*(R00010))))))))));
 elseif z==3
 
R0006=R000x (6,alpha,A,Farray)  ;
R0007=R000x (7,alpha,A,Farray)  ;
R0008=R000x (8,alpha,A,Farray)  ;
R0009=R000x (9,alpha,A,Farray)  ;
R00010=R000x (10,alpha,A,Farray)  ;
R00011=R000x (11,alpha,A,Farray)  ;

 result =(3)*(((3)*(((2)*(Az*(R0006))+Az*((R0006)+Az*(Az*(R0007))))+Ay*(Ay*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008))))))+Ay*((2)*(Ay*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008)))))+Ay*(((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008))))+Ay*(Ay*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009))))))))+Ax*(Ax*((3)*(((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008))))+Ay*(Ay*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009))))))+Ay*((2)*(Ay*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009)))))+Ay*(((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009))))+Ay*(Ay*((2)*(Az*(R0009))+Az*((R0009)+Az*(Az*(R00010))))))))))+Ax*((2)*(Ax*((3)*(((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008))))+Ay*(Ay*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009))))))+Ay*((2)*(Ay*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009)))))+Ay*(((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009))))+Ay*(Ay*((2)*(Az*(R0009))+Az*((R0009)+Az*(Az*(R00010)))))))))+Ax*(((3)*(((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008))))+Ay*(Ay*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009))))))+Ay*((2)*(Ay*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009)))))+Ay*(((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009))))+Ay*(Ay*((2)*(Az*(R0009))+Az*((R0009)+Az*(Az*(R00010))))))))+Ax*(Ax*((3)*(((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009))))+Ay*(Ay*((2)*(Az*(R0009))+Az*((R0009)+Az*(Az*(R00010))))))+Ay*((2)*(Ay*((2)*(Az*(R0009))+Az*((R0009)+Az*(Az*(R00010)))))+Ay*(((2)*(Az*(R0009))+Az*((R0009)+Az*(Az*(R00010))))+Ay*(Ay*((2)*(Az*(R00010))+Az*((R00010)+Az*(Az*(R00011)))))))))));
elseif z==4 
 
R0006=R000x (6,alpha,A,Farray)  ;
R0007=R000x (7,alpha,A,Farray)  ;
R0008=R000x (8,alpha,A,Farray)  ;
R0009=R000x (9,alpha,A,Farray)  ;
R00010=R000x (10,alpha,A,Farray)  ;
R00011=R000x (11,alpha,A,Farray)  ;
R00012=R000x (12,alpha,A,Farray)  ;

 result =(3)*(((3)*(((3)*((R0006)+Az*(Az*(R0007)))+Az*((2)*(Az*(R0007))+Az*((R0007)+Az*(Az*(R0008)))))+Ay*(Ay*((3)*((R0007)+Az*(Az*(R0008)))+Az*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009)))))))+Ay*((2)*(Ay*((3)*((R0007)+Az*(Az*(R0008)))+Az*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009))))))+Ay*(((3)*((R0007)+Az*(Az*(R0008)))+Az*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009)))))+Ay*(Ay*((3)*((R0008)+Az*(Az*(R0009)))+Az*((2)*(Az*(R0009))+Az*((R0009)+Az*(Az*(R00010)))))))))+Ax*(Ax*((3)*(((3)*((R0007)+Az*(Az*(R0008)))+Az*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009)))))+Ay*(Ay*((3)*((R0008)+Az*(Az*(R0009)))+Az*((2)*(Az*(R0009))+Az*((R0009)+Az*(Az*(R00010)))))))+Ay*((2)*(Ay*((3)*((R0008)+Az*(Az*(R0009)))+Az*((2)*(Az*(R0009))+Az*((R0009)+Az*(Az*(R00010))))))+Ay*(((3)*((R0008)+Az*(Az*(R0009)))+Az*((2)*(Az*(R0009))+Az*((R0009)+Az*(Az*(R00010)))))+Ay*(Ay*((3)*((R0009)+Az*(Az*(R00010)))+Az*((2)*(Az*(R00010))+Az*((R00010)+Az*(Az*(R00011)))))))))))+Ax*((2)*(Ax*((3)*(((3)*((R0007)+Az*(Az*(R0008)))+Az*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009)))))+Ay*(Ay*((3)*((R0008)+Az*(Az*(R0009)))+Az*((2)*(Az*(R0009))+Az*((R0009)+Az*(Az*(R00010)))))))+Ay*((2)*(Ay*((3)*((R0008)+Az*(Az*(R0009)))+Az*((2)*(Az*(R0009))+Az*((R0009)+Az*(Az*(R00010))))))+Ay*(((3)*((R0008)+Az*(Az*(R0009)))+Az*((2)*(Az*(R0009))+Az*((R0009)+Az*(Az*(R00010)))))+Ay*(Ay*((3)*((R0009)+Az*(Az*(R00010)))+Az*((2)*(Az*(R00010))+Az*((R00010)+Az*(Az*(R00011))))))))))+Ax*(((3)*(((3)*((R0007)+Az*(Az*(R0008)))+Az*((2)*(Az*(R0008))+Az*((R0008)+Az*(Az*(R0009)))))+Ay*(Ay*((3)*((R0008)+Az*(Az*(R0009)))+Az*((2)*(Az*(R0009))+Az*((R0009)+Az*(Az*(R00010)))))))+Ay*((2)*(Ay*((3)*((R0008)+Az*(Az*(R0009)))+Az*((2)*(Az*(R0009))+Az*((R0009)+Az*(Az*(R00010))))))+Ay*(((3)*((R0008)+Az*(Az*(R0009)))+Az*((2)*(Az*(R0009))+Az*((R0009)+Az*(Az*(R00010)))))+Ay*(Ay*((3)*((R0009)+Az*(Az*(R00010)))+Az*((2)*(Az*(R00010))+Az*((R00010)+Az*(Az*(R00011)))))))))+Ax*(Ax*((3)*(((3)*((R0008)+Az*(Az*(R0009)))+Az*((2)*(Az*(R0009))+Az*((R0009)+Az*(Az*(R00010)))))+Ay*(Ay*((3)*((R0009)+Az*(Az*(R00010)))+Az*((2)*(Az*(R00010))+Az*((R00010)+Az*(Az*(R00011)))))))+Ay*((2)*(Ay*((3)*((R0009)+Az*(Az*(R00010)))+Az*((2)*(Az*(R00010))+Az*((R00010)+Az*(Az*(R00011))))))+Ay*(((3)*((R0009)+Az*(Az*(R00010)))+Az*((2)*(Az*(R00010))+Az*((R00010)+Az*(Az*(R00011)))))+Ay*(Ay*((3)*((R00010)+Az*(Az*(R00011)))+Az*((2)*(Az*(R00011))+Az*((R00011)+Az*(Az*(R00012))))))))))));
 else 
 result=0; 
 end

 else 
 result=0; 
 end

 else 
 result=0; 
 end
