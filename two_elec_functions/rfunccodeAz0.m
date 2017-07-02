function result = rfunccode (x,y,z,alpha,A,Farray)
 Ay=A(2); 
 Az=A(3);if x==0 
if y==0 
if z==0 
result=RAz0000(alpha,A,Farray);
 elseif z==1
result=RAz0001(alpha,A,Farray);
 elseif z==2
result=RAz0002(alpha,A,Farray);
 elseif z==3
result=RAz0003(alpha,A,Farray);
elseif z==4 
 result=RAz0004(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==1
if z==0 
result=RAz0010(alpha,A,Farray);
 elseif z==1
result=RAz0011(alpha,A,Farray);
 elseif z==2
result=RAz0012(alpha,A,Farray);
 elseif z==3
result=RAz0013(alpha,A,Farray);
elseif z==4 
 result=RAz0014(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==2
if z==0 
result=RAz0020(alpha,A,Farray);
 elseif z==1
result=RAz0021(alpha,A,Farray);
 elseif z==2
result=RAz0022(alpha,A,Farray);
 elseif z==3
result=RAz0023(alpha,A,Farray);
elseif z==4 
 result=RAz0024(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==3
if z==0 
result=RAz0030(alpha,A,Farray);
 elseif z==1
result=RAz0031(alpha,A,Farray);
 elseif z==2
result=RAz0032(alpha,A,Farray);
 elseif z==3
result=RAz0033(alpha,A,Farray);
elseif z==4 
 result=RAz0034(alpha,A,Farray);
 else 
 result=0; 
 end

elseif y==4 
 if z==0 
result=RAz0040(alpha,A,Farray);
 elseif z==1
result=RAz0041(alpha,A,Farray);
 elseif z==2
result=RAz0042(alpha,A,Farray);
 elseif z==3
result=RAz0043(alpha,A,Farray);
elseif z==4 
 result=RAz0044(alpha,A,Farray);
 else 
 result=0; 
 end

 else 
 result=0; 
 end

 elseif x==1
if y==0 
if z==0 
result=RAz0100(alpha,A,Farray);
 elseif z==1
result=RAz0101(alpha,A,Farray);
 elseif z==2
result=RAz0102(alpha,A,Farray);
 elseif z==3
result=RAz0103(alpha,A,Farray);
elseif z==4 
 result=RAz0104(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==1
if z==0 
result=RAz0110(alpha,A,Farray);
 elseif z==1
result=RAz0111(alpha,A,Farray);
 elseif z==2
result=RAz0112(alpha,A,Farray);
 elseif z==3
result=RAz0113(alpha,A,Farray);
elseif z==4 
 result=RAz0114(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==2
if z==0 
result=RAz0120(alpha,A,Farray);
 elseif z==1
result=RAz0121(alpha,A,Farray);
 elseif z==2
result=RAz0122(alpha,A,Farray);
 elseif z==3
result=RAz0123(alpha,A,Farray);
elseif z==4 
 result=RAz0124(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==3
if z==0 
result=RAz0130(alpha,A,Farray);
 elseif z==1
result=RAz0131(alpha,A,Farray);
 elseif z==2
result=RAz0132(alpha,A,Farray);
 elseif z==3
result=RAz0133(alpha,A,Farray);
elseif z==4 
 result=RAz0134(alpha,A,Farray);
 else 
 result=0; 
 end

elseif y==4 
 if z==0 
result=RAz0140(alpha,A,Farray);
 elseif z==1
result=RAz0141(alpha,A,Farray);
 elseif z==2
result=RAz0142(alpha,A,Farray);
 elseif z==3
result=RAz0143(alpha,A,Farray);
elseif z==4 
 result=RAz0144(alpha,A,Farray);
 else 
 result=0; 
 end

 else 
 result=0; 
 end

 elseif x==2
if y==0 
if z==0 
result=RAz0200(alpha,A,Farray);
 elseif z==1
result=RAz0201(alpha,A,Farray);
 elseif z==2
result=RAz0202(alpha,A,Farray);
 elseif z==3
result=RAz0203(alpha,A,Farray);
elseif z==4 
 result=RAz0204(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==1
if z==0 
result=RAz0210(alpha,A,Farray);
 elseif z==1
result=RAz0211(alpha,A,Farray);
 elseif z==2
result=RAz0212(alpha,A,Farray);
 elseif z==3
result=RAz0213(alpha,A,Farray);
elseif z==4 
 result=RAz0214(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==2
if z==0 
result=RAz0220(alpha,A,Farray);
 elseif z==1
result=RAz0221(alpha,A,Farray);
 elseif z==2
result=RAz0222(alpha,A,Farray);
 elseif z==3
result=RAz0223(alpha,A,Farray);
elseif z==4 
 result=RAz0224(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==3
if z==0 
result=RAz0230(alpha,A,Farray);
 elseif z==1
result=RAz0231(alpha,A,Farray);
 elseif z==2
result=RAz0232(alpha,A,Farray);
 elseif z==3
result=RAz0233(alpha,A,Farray);
elseif z==4 
 result=RAz0234(alpha,A,Farray);
 else 
 result=0; 
 end

elseif y==4 
 if z==0 
result=RAz0240(alpha,A,Farray);
 elseif z==1
result=RAz0241(alpha,A,Farray);
 elseif z==2
result=RAz0242(alpha,A,Farray);
 elseif z==3
result=RAz0243(alpha,A,Farray);
elseif z==4 
 result=RAz0244(alpha,A,Farray);
 else 
 result=0; 
 end

 else 
 result=0; 
 end

 elseif x==3
if y==0 
if z==0 
result=RAz0300(alpha,A,Farray);
 elseif z==1
result=RAz0301(alpha,A,Farray);
 elseif z==2
result=RAz0302(alpha,A,Farray);
 elseif z==3
result=RAz0303(alpha,A,Farray);
elseif z==4 
 result=RAz0304(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==1
if z==0 
result=RAz0310(alpha,A,Farray);
 elseif z==1
result=RAz0311(alpha,A,Farray);
 elseif z==2
result=RAz0312(alpha,A,Farray);
 elseif z==3
result=RAz0313(alpha,A,Farray);
elseif z==4 
 result=RAz0314(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==2
if z==0 
result=RAz0320(alpha,A,Farray);
 elseif z==1
result=RAz0321(alpha,A,Farray);
 elseif z==2
result=RAz0322(alpha,A,Farray);
 elseif z==3
result=RAz0323(alpha,A,Farray);
elseif z==4 
 result=RAz0324(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==3
if z==0 
result=RAz0330(alpha,A,Farray);
 elseif z==1
result=RAz0331(alpha,A,Farray);
 elseif z==2
result=RAz0332(alpha,A,Farray);
 elseif z==3
result=RAz0333(alpha,A,Farray);
elseif z==4 
 result=RAz0334(alpha,A,Farray);
 else 
 result=0; 
 end

elseif y==4 
 if z==0 
result=RAz0340(alpha,A,Farray);
 elseif z==1
result=RAz0341(alpha,A,Farray);
 elseif z==2
result=RAz0342(alpha,A,Farray);
 elseif z==3
result=RAz0343(alpha,A,Farray);
elseif z==4 
 result=RAz0344(alpha,A,Farray);
 else 
 result=0; 
 end

 else 
 result=0; 
 end

elseif x==4 
 if y==0 
if z==0 
result=RAz0400(alpha,A,Farray);
 elseif z==1
result=RAz0401(alpha,A,Farray);
 elseif z==2
result=RAz0402(alpha,A,Farray);
 elseif z==3
result=RAz0403(alpha,A,Farray);
elseif z==4 
 result=RAz0404(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==1
if z==0 
result=RAz0410(alpha,A,Farray);
 elseif z==1
result=RAz0411(alpha,A,Farray);
 elseif z==2
result=RAz0412(alpha,A,Farray);
 elseif z==3
result=RAz0413(alpha,A,Farray);
elseif z==4 
 result=RAz0414(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==2
if z==0 
result=RAz0420(alpha,A,Farray);
 elseif z==1
result=RAz0421(alpha,A,Farray);
 elseif z==2
result=RAz0422(alpha,A,Farray);
 elseif z==3
result=RAz0423(alpha,A,Farray);
elseif z==4 
 result=RAz0424(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==3
if z==0 
result=RAz0430(alpha,A,Farray);
 elseif z==1
result=RAz0431(alpha,A,Farray);
 elseif z==2
result=RAz0432(alpha,A,Farray);
 elseif z==3
result=RAz0433(alpha,A,Farray);
elseif z==4 
 result=RAz0434(alpha,A,Farray);
 else 
 result=0; 
 end

elseif y==4 
 if z==0 
result=RAz0440(alpha,A,Farray);
 elseif z==1
result=RAz0441(alpha,A,Farray);
 elseif z==2
result=RAz0442(alpha,A,Farray);
 elseif z==3
result=RAz0443(alpha,A,Farray);
elseif z==4 
 result=RAz0444(alpha,A,Farray);
 else 
 result=0; 
 end

 else 
 result=0; 
 end

 else 
 result=0; 
 end
