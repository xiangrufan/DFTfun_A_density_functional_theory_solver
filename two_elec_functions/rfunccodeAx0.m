function result = rfunccode (x,y,z,alpha,A,Farray)
 Ay=A(2); 
 Az=A(3);if x==0 
if y==0 
if z==0 
result=RAx0000(alpha,A,Farray);
 elseif z==1
result=RAx0001(alpha,A,Farray);
 elseif z==2
result=RAx0002(alpha,A,Farray);
 elseif z==3
result=RAx0003(alpha,A,Farray);
elseif z==4 
 result=RAx0004(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==1
if z==0 
result=RAx0010(alpha,A,Farray);
 elseif z==1
result=RAx0011(alpha,A,Farray);
 elseif z==2
result=RAx0012(alpha,A,Farray);
 elseif z==3
result=RAx0013(alpha,A,Farray);
elseif z==4 
 result=RAx0014(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==2
if z==0 
result=RAx0020(alpha,A,Farray);
 elseif z==1
result=RAx0021(alpha,A,Farray);
 elseif z==2
result=RAx0022(alpha,A,Farray);
 elseif z==3
result=RAx0023(alpha,A,Farray);
elseif z==4 
 result=RAx0024(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==3
if z==0 
result=RAx0030(alpha,A,Farray);
 elseif z==1
result=RAx0031(alpha,A,Farray);
 elseif z==2
result=RAx0032(alpha,A,Farray);
 elseif z==3
result=RAx0033(alpha,A,Farray);
elseif z==4 
 result=RAx0034(alpha,A,Farray);
 else 
 result=0; 
 end

elseif y==4 
 if z==0 
result=RAx0040(alpha,A,Farray);
 elseif z==1
result=RAx0041(alpha,A,Farray);
 elseif z==2
result=RAx0042(alpha,A,Farray);
 elseif z==3
result=RAx0043(alpha,A,Farray);
elseif z==4 
 result=RAx0044(alpha,A,Farray);
 else 
 result=0; 
 end

 else 
 result=0; 
 end

 elseif x==1
if y==0 
if z==0 
result=RAx0100(alpha,A,Farray);
 elseif z==1
result=RAx0101(alpha,A,Farray);
 elseif z==2
result=RAx0102(alpha,A,Farray);
 elseif z==3
result=RAx0103(alpha,A,Farray);
elseif z==4 
 result=RAx0104(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==1
if z==0 
result=RAx0110(alpha,A,Farray);
 elseif z==1
result=RAx0111(alpha,A,Farray);
 elseif z==2
result=RAx0112(alpha,A,Farray);
 elseif z==3
result=RAx0113(alpha,A,Farray);
elseif z==4 
 result=RAx0114(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==2
if z==0 
result=RAx0120(alpha,A,Farray);
 elseif z==1
result=RAx0121(alpha,A,Farray);
 elseif z==2
result=RAx0122(alpha,A,Farray);
 elseif z==3
result=RAx0123(alpha,A,Farray);
elseif z==4 
 result=RAx0124(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==3
if z==0 
result=RAx0130(alpha,A,Farray);
 elseif z==1
result=RAx0131(alpha,A,Farray);
 elseif z==2
result=RAx0132(alpha,A,Farray);
 elseif z==3
result=RAx0133(alpha,A,Farray);
elseif z==4 
 result=RAx0134(alpha,A,Farray);
 else 
 result=0; 
 end

elseif y==4 
 if z==0 
result=RAx0140(alpha,A,Farray);
 elseif z==1
result=RAx0141(alpha,A,Farray);
 elseif z==2
result=RAx0142(alpha,A,Farray);
 elseif z==3
result=RAx0143(alpha,A,Farray);
elseif z==4 
 result=RAx0144(alpha,A,Farray);
 else 
 result=0; 
 end

 else 
 result=0; 
 end

 elseif x==2
if y==0 
if z==0 
result=RAx0200(alpha,A,Farray);
 elseif z==1
result=RAx0201(alpha,A,Farray);
 elseif z==2
result=RAx0202(alpha,A,Farray);
 elseif z==3
result=RAx0203(alpha,A,Farray);
elseif z==4 
 result=RAx0204(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==1
if z==0 
result=RAx0210(alpha,A,Farray);
 elseif z==1
result=RAx0211(alpha,A,Farray);
 elseif z==2
result=RAx0212(alpha,A,Farray);
 elseif z==3
result=RAx0213(alpha,A,Farray);
elseif z==4 
 result=RAx0214(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==2
if z==0 
result=RAx0220(alpha,A,Farray);
 elseif z==1
result=RAx0221(alpha,A,Farray);
 elseif z==2
result=RAx0222(alpha,A,Farray);
 elseif z==3
result=RAx0223(alpha,A,Farray);
elseif z==4 
 result=RAx0224(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==3
if z==0 
result=RAx0230(alpha,A,Farray);
 elseif z==1
result=RAx0231(alpha,A,Farray);
 elseif z==2
result=RAx0232(alpha,A,Farray);
 elseif z==3
result=RAx0233(alpha,A,Farray);
elseif z==4 
 result=RAx0234(alpha,A,Farray);
 else 
 result=0; 
 end

elseif y==4 
 if z==0 
result=RAx0240(alpha,A,Farray);
 elseif z==1
result=RAx0241(alpha,A,Farray);
 elseif z==2
result=RAx0242(alpha,A,Farray);
 elseif z==3
result=RAx0243(alpha,A,Farray);
elseif z==4 
 result=RAx0244(alpha,A,Farray);
 else 
 result=0; 
 end

 else 
 result=0; 
 end

 elseif x==3
if y==0 
if z==0 
result=RAx0300(alpha,A,Farray);
 elseif z==1
result=RAx0301(alpha,A,Farray);
 elseif z==2
result=RAx0302(alpha,A,Farray);
 elseif z==3
result=RAx0303(alpha,A,Farray);
elseif z==4 
 result=RAx0304(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==1
if z==0 
result=RAx0310(alpha,A,Farray);
 elseif z==1
result=RAx0311(alpha,A,Farray);
 elseif z==2
result=RAx0312(alpha,A,Farray);
 elseif z==3
result=RAx0313(alpha,A,Farray);
elseif z==4 
 result=RAx0314(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==2
if z==0 
result=RAx0320(alpha,A,Farray);
 elseif z==1
result=RAx0321(alpha,A,Farray);
 elseif z==2
result=RAx0322(alpha,A,Farray);
 elseif z==3
result=RAx0323(alpha,A,Farray);
elseif z==4 
 result=RAx0324(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==3
if z==0 
result=RAx0330(alpha,A,Farray);
 elseif z==1
result=RAx0331(alpha,A,Farray);
 elseif z==2
result=RAx0332(alpha,A,Farray);
 elseif z==3
result=RAx0333(alpha,A,Farray);
elseif z==4 
 result=RAx0334(alpha,A,Farray);
 else 
 result=0; 
 end

elseif y==4 
 if z==0 
result=RAx0340(alpha,A,Farray);
 elseif z==1
result=RAx0341(alpha,A,Farray);
 elseif z==2
result=RAx0342(alpha,A,Farray);
 elseif z==3
result=RAx0343(alpha,A,Farray);
elseif z==4 
 result=RAx0344(alpha,A,Farray);
 else 
 result=0; 
 end

 else 
 result=0; 
 end

elseif x==4 
 if y==0 
if z==0 
result=RAx0400(alpha,A,Farray);
 elseif z==1
result=RAx0401(alpha,A,Farray);
 elseif z==2
result=RAx0402(alpha,A,Farray);
 elseif z==3
result=RAx0403(alpha,A,Farray);
elseif z==4 
 result=RAx0404(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==1
if z==0 
result=RAx0410(alpha,A,Farray);
 elseif z==1
result=RAx0411(alpha,A,Farray);
 elseif z==2
result=RAx0412(alpha,A,Farray);
 elseif z==3
result=RAx0413(alpha,A,Farray);
elseif z==4 
 result=RAx0414(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==2
if z==0 
result=RAx0420(alpha,A,Farray);
 elseif z==1
result=RAx0421(alpha,A,Farray);
 elseif z==2
result=RAx0422(alpha,A,Farray);
 elseif z==3
result=RAx0423(alpha,A,Farray);
elseif z==4 
 result=RAx0424(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==3
if z==0 
result=RAx0430(alpha,A,Farray);
 elseif z==1
result=RAx0431(alpha,A,Farray);
 elseif z==2
result=RAx0432(alpha,A,Farray);
 elseif z==3
result=RAx0433(alpha,A,Farray);
elseif z==4 
 result=RAx0434(alpha,A,Farray);
 else 
 result=0; 
 end

elseif y==4 
 if z==0 
result=RAx0440(alpha,A,Farray);
 elseif z==1
result=RAx0441(alpha,A,Farray);
 elseif z==2
result=RAx0442(alpha,A,Farray);
 elseif z==3
result=RAx0443(alpha,A,Farray);
elseif z==4 
 result=RAx0444(alpha,A,Farray);
 else 
 result=0; 
 end

 else 
 result=0; 
 end

 else 
 result=0; 
 end
