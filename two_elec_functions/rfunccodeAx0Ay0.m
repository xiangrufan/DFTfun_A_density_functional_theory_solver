function result = rfunccode (x,y,z,alpha,A,Farray)
 Ay=A(2); 
 Az=A(3);if x==0 
if y==0 
if z==0 
result=RAx0Ay0000(alpha,A,Farray);
 elseif z==1
result=RAx0Ay0001(alpha,A,Farray);
 elseif z==2
result=RAx0Ay0002(alpha,A,Farray);
 elseif z==3
result=RAx0Ay0003(alpha,A,Farray);
elseif z==4 
 result=RAx0Ay0004(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==1
if z==0 
result=RAx0Ay0010(alpha,A,Farray);
 elseif z==1
result=RAx0Ay0011(alpha,A,Farray);
 elseif z==2
result=RAx0Ay0012(alpha,A,Farray);
 elseif z==3
result=RAx0Ay0013(alpha,A,Farray);
elseif z==4 
 result=RAx0Ay0014(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==2
if z==0 
result=RAx0Ay0020(alpha,A,Farray);
 elseif z==1
result=RAx0Ay0021(alpha,A,Farray);
 elseif z==2
result=RAx0Ay0022(alpha,A,Farray);
 elseif z==3
result=RAx0Ay0023(alpha,A,Farray);
elseif z==4 
 result=RAx0Ay0024(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==3
if z==0 
result=RAx0Ay0030(alpha,A,Farray);
 elseif z==1
result=RAx0Ay0031(alpha,A,Farray);
 elseif z==2
result=RAx0Ay0032(alpha,A,Farray);
 elseif z==3
result=RAx0Ay0033(alpha,A,Farray);
elseif z==4 
 result=RAx0Ay0034(alpha,A,Farray);
 else 
 result=0; 
 end

elseif y==4 
 if z==0 
result=RAx0Ay0040(alpha,A,Farray);
 elseif z==1
result=RAx0Ay0041(alpha,A,Farray);
 elseif z==2
result=RAx0Ay0042(alpha,A,Farray);
 elseif z==3
result=RAx0Ay0043(alpha,A,Farray);
elseif z==4 
 result=RAx0Ay0044(alpha,A,Farray);
 else 
 result=0; 
 end

 else 
 result=0; 
 end

 elseif x==1
if y==0 
if z==0 
result=RAx0Ay0100(alpha,A,Farray);
 elseif z==1
result=RAx0Ay0101(alpha,A,Farray);
 elseif z==2
result=RAx0Ay0102(alpha,A,Farray);
 elseif z==3
result=RAx0Ay0103(alpha,A,Farray);
elseif z==4 
 result=RAx0Ay0104(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==1
if z==0 
result=RAx0Ay0110(alpha,A,Farray);
 elseif z==1
result=RAx0Ay0111(alpha,A,Farray);
 elseif z==2
result=RAx0Ay0112(alpha,A,Farray);
 elseif z==3
result=RAx0Ay0113(alpha,A,Farray);
elseif z==4 
 result=RAx0Ay0114(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==2
if z==0 
result=RAx0Ay0120(alpha,A,Farray);
 elseif z==1
result=RAx0Ay0121(alpha,A,Farray);
 elseif z==2
result=RAx0Ay0122(alpha,A,Farray);
 elseif z==3
result=RAx0Ay0123(alpha,A,Farray);
elseif z==4 
 result=RAx0Ay0124(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==3
if z==0 
result=RAx0Ay0130(alpha,A,Farray);
 elseif z==1
result=RAx0Ay0131(alpha,A,Farray);
 elseif z==2
result=RAx0Ay0132(alpha,A,Farray);
 elseif z==3
result=RAx0Ay0133(alpha,A,Farray);
elseif z==4 
 result=RAx0Ay0134(alpha,A,Farray);
 else 
 result=0; 
 end

elseif y==4 
 if z==0 
result=RAx0Ay0140(alpha,A,Farray);
 elseif z==1
result=RAx0Ay0141(alpha,A,Farray);
 elseif z==2
result=RAx0Ay0142(alpha,A,Farray);
 elseif z==3
result=RAx0Ay0143(alpha,A,Farray);
elseif z==4 
 result=RAx0Ay0144(alpha,A,Farray);
 else 
 result=0; 
 end

 else 
 result=0; 
 end

 elseif x==2
if y==0 
if z==0 
result=RAx0Ay0200(alpha,A,Farray);
 elseif z==1
result=RAx0Ay0201(alpha,A,Farray);
 elseif z==2
result=RAx0Ay0202(alpha,A,Farray);
 elseif z==3
result=RAx0Ay0203(alpha,A,Farray);
elseif z==4 
 result=RAx0Ay0204(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==1
if z==0 
result=RAx0Ay0210(alpha,A,Farray);
 elseif z==1
result=RAx0Ay0211(alpha,A,Farray);
 elseif z==2
result=RAx0Ay0212(alpha,A,Farray);
 elseif z==3
result=RAx0Ay0213(alpha,A,Farray);
elseif z==4 
 result=RAx0Ay0214(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==2
if z==0 
result=RAx0Ay0220(alpha,A,Farray);
 elseif z==1
result=RAx0Ay0221(alpha,A,Farray);
 elseif z==2
result=RAx0Ay0222(alpha,A,Farray);
 elseif z==3
result=RAx0Ay0223(alpha,A,Farray);
elseif z==4 
 result=RAx0Ay0224(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==3
if z==0 
result=RAx0Ay0230(alpha,A,Farray);
 elseif z==1
result=RAx0Ay0231(alpha,A,Farray);
 elseif z==2
result=RAx0Ay0232(alpha,A,Farray);
 elseif z==3
result=RAx0Ay0233(alpha,A,Farray);
elseif z==4 
 result=RAx0Ay0234(alpha,A,Farray);
 else 
 result=0; 
 end

elseif y==4 
 if z==0 
result=RAx0Ay0240(alpha,A,Farray);
 elseif z==1
result=RAx0Ay0241(alpha,A,Farray);
 elseif z==2
result=RAx0Ay0242(alpha,A,Farray);
 elseif z==3
result=RAx0Ay0243(alpha,A,Farray);
elseif z==4 
 result=RAx0Ay0244(alpha,A,Farray);
 else 
 result=0; 
 end

 else 
 result=0; 
 end

 elseif x==3
if y==0 
if z==0 
result=RAx0Ay0300(alpha,A,Farray);
 elseif z==1
result=RAx0Ay0301(alpha,A,Farray);
 elseif z==2
result=RAx0Ay0302(alpha,A,Farray);
 elseif z==3
result=RAx0Ay0303(alpha,A,Farray);
elseif z==4 
 result=RAx0Ay0304(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==1
if z==0 
result=RAx0Ay0310(alpha,A,Farray);
 elseif z==1
result=RAx0Ay0311(alpha,A,Farray);
 elseif z==2
result=RAx0Ay0312(alpha,A,Farray);
 elseif z==3
result=RAx0Ay0313(alpha,A,Farray);
elseif z==4 
 result=RAx0Ay0314(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==2
if z==0 
result=RAx0Ay0320(alpha,A,Farray);
 elseif z==1
result=RAx0Ay0321(alpha,A,Farray);
 elseif z==2
result=RAx0Ay0322(alpha,A,Farray);
 elseif z==3
result=RAx0Ay0323(alpha,A,Farray);
elseif z==4 
 result=RAx0Ay0324(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==3
if z==0 
result=RAx0Ay0330(alpha,A,Farray);
 elseif z==1
result=RAx0Ay0331(alpha,A,Farray);
 elseif z==2
result=RAx0Ay0332(alpha,A,Farray);
 elseif z==3
result=RAx0Ay0333(alpha,A,Farray);
elseif z==4 
 result=RAx0Ay0334(alpha,A,Farray);
 else 
 result=0; 
 end

elseif y==4 
 if z==0 
result=RAx0Ay0340(alpha,A,Farray);
 elseif z==1
result=RAx0Ay0341(alpha,A,Farray);
 elseif z==2
result=RAx0Ay0342(alpha,A,Farray);
 elseif z==3
result=RAx0Ay0343(alpha,A,Farray);
elseif z==4 
 result=RAx0Ay0344(alpha,A,Farray);
 else 
 result=0; 
 end

 else 
 result=0; 
 end

elseif x==4 
 if y==0 
if z==0 
result=RAx0Ay0400(alpha,A,Farray);
 elseif z==1
result=RAx0Ay0401(alpha,A,Farray);
 elseif z==2
result=RAx0Ay0402(alpha,A,Farray);
 elseif z==3
result=RAx0Ay0403(alpha,A,Farray);
elseif z==4 
 result=RAx0Ay0404(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==1
if z==0 
result=RAx0Ay0410(alpha,A,Farray);
 elseif z==1
result=RAx0Ay0411(alpha,A,Farray);
 elseif z==2
result=RAx0Ay0412(alpha,A,Farray);
 elseif z==3
result=RAx0Ay0413(alpha,A,Farray);
elseif z==4 
 result=RAx0Ay0414(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==2
if z==0 
result=RAx0Ay0420(alpha,A,Farray);
 elseif z==1
result=RAx0Ay0421(alpha,A,Farray);
 elseif z==2
result=RAx0Ay0422(alpha,A,Farray);
 elseif z==3
result=RAx0Ay0423(alpha,A,Farray);
elseif z==4 
 result=RAx0Ay0424(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==3
if z==0 
result=RAx0Ay0430(alpha,A,Farray);
 elseif z==1
result=RAx0Ay0431(alpha,A,Farray);
 elseif z==2
result=RAx0Ay0432(alpha,A,Farray);
 elseif z==3
result=RAx0Ay0433(alpha,A,Farray);
elseif z==4 
 result=RAx0Ay0434(alpha,A,Farray);
 else 
 result=0; 
 end

elseif y==4 
 if z==0 
result=RAx0Ay0440(alpha,A,Farray);
 elseif z==1
result=RAx0Ay0441(alpha,A,Farray);
 elseif z==2
result=RAx0Ay0442(alpha,A,Farray);
 elseif z==3
result=RAx0Ay0443(alpha,A,Farray);
elseif z==4 
 result=RAx0Ay0444(alpha,A,Farray);
 else 
 result=0; 
 end

 else 
 result=0; 
 end

 else 
 result=0; 
 end
