function result = rfunccode (x,y,z,alpha,A,Farray)
 Ay=A(2); 
 Az=A(3);if x==0 
if y==0 
if z==0 
result=RAy0000(alpha,A,Farray);
 elseif z==1
result=RAy0001(alpha,A,Farray);
 elseif z==2
result=RAy0002(alpha,A,Farray);
 elseif z==3
result=RAy0003(alpha,A,Farray);
elseif z==4 
 result=RAy0004(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==1
if z==0 
result=RAy0010(alpha,A,Farray);
 elseif z==1
result=RAy0011(alpha,A,Farray);
 elseif z==2
result=RAy0012(alpha,A,Farray);
 elseif z==3
result=RAy0013(alpha,A,Farray);
elseif z==4 
 result=RAy0014(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==2
if z==0 
result=RAy0020(alpha,A,Farray);
 elseif z==1
result=RAy0021(alpha,A,Farray);
 elseif z==2
result=RAy0022(alpha,A,Farray);
 elseif z==3
result=RAy0023(alpha,A,Farray);
elseif z==4 
 result=RAy0024(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==3
if z==0 
result=RAy0030(alpha,A,Farray);
 elseif z==1
result=RAy0031(alpha,A,Farray);
 elseif z==2
result=RAy0032(alpha,A,Farray);
 elseif z==3
result=RAy0033(alpha,A,Farray);
elseif z==4 
 result=RAy0034(alpha,A,Farray);
 else 
 result=0; 
 end

elseif y==4 
 if z==0 
result=RAy0040(alpha,A,Farray);
 elseif z==1
result=RAy0041(alpha,A,Farray);
 elseif z==2
result=RAy0042(alpha,A,Farray);
 elseif z==3
result=RAy0043(alpha,A,Farray);
elseif z==4 
 result=RAy0044(alpha,A,Farray);
 else 
 result=0; 
 end

 else 
 result=0; 
 end

 elseif x==1
if y==0 
if z==0 
result=RAy0100(alpha,A,Farray);
 elseif z==1
result=RAy0101(alpha,A,Farray);
 elseif z==2
result=RAy0102(alpha,A,Farray);
 elseif z==3
result=RAy0103(alpha,A,Farray);
elseif z==4 
 result=RAy0104(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==1
if z==0 
result=RAy0110(alpha,A,Farray);
 elseif z==1
result=RAy0111(alpha,A,Farray);
 elseif z==2
result=RAy0112(alpha,A,Farray);
 elseif z==3
result=RAy0113(alpha,A,Farray);
elseif z==4 
 result=RAy0114(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==2
if z==0 
result=RAy0120(alpha,A,Farray);
 elseif z==1
result=RAy0121(alpha,A,Farray);
 elseif z==2
result=RAy0122(alpha,A,Farray);
 elseif z==3
result=RAy0123(alpha,A,Farray);
elseif z==4 
 result=RAy0124(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==3
if z==0 
result=RAy0130(alpha,A,Farray);
 elseif z==1
result=RAy0131(alpha,A,Farray);
 elseif z==2
result=RAy0132(alpha,A,Farray);
 elseif z==3
result=RAy0133(alpha,A,Farray);
elseif z==4 
 result=RAy0134(alpha,A,Farray);
 else 
 result=0; 
 end

elseif y==4 
 if z==0 
result=RAy0140(alpha,A,Farray);
 elseif z==1
result=RAy0141(alpha,A,Farray);
 elseif z==2
result=RAy0142(alpha,A,Farray);
 elseif z==3
result=RAy0143(alpha,A,Farray);
elseif z==4 
 result=RAy0144(alpha,A,Farray);
 else 
 result=0; 
 end

 else 
 result=0; 
 end

 elseif x==2
if y==0 
if z==0 
result=RAy0200(alpha,A,Farray);
 elseif z==1
result=RAy0201(alpha,A,Farray);
 elseif z==2
result=RAy0202(alpha,A,Farray);
 elseif z==3
result=RAy0203(alpha,A,Farray);
elseif z==4 
 result=RAy0204(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==1
if z==0 
result=RAy0210(alpha,A,Farray);
 elseif z==1
result=RAy0211(alpha,A,Farray);
 elseif z==2
result=RAy0212(alpha,A,Farray);
 elseif z==3
result=RAy0213(alpha,A,Farray);
elseif z==4 
 result=RAy0214(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==2
if z==0 
result=RAy0220(alpha,A,Farray);
 elseif z==1
result=RAy0221(alpha,A,Farray);
 elseif z==2
result=RAy0222(alpha,A,Farray);
 elseif z==3
result=RAy0223(alpha,A,Farray);
elseif z==4 
 result=RAy0224(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==3
if z==0 
result=RAy0230(alpha,A,Farray);
 elseif z==1
result=RAy0231(alpha,A,Farray);
 elseif z==2
result=RAy0232(alpha,A,Farray);
 elseif z==3
result=RAy0233(alpha,A,Farray);
elseif z==4 
 result=RAy0234(alpha,A,Farray);
 else 
 result=0; 
 end

elseif y==4 
 if z==0 
result=RAy0240(alpha,A,Farray);
 elseif z==1
result=RAy0241(alpha,A,Farray);
 elseif z==2
result=RAy0242(alpha,A,Farray);
 elseif z==3
result=RAy0243(alpha,A,Farray);
elseif z==4 
 result=RAy0244(alpha,A,Farray);
 else 
 result=0; 
 end

 else 
 result=0; 
 end

 elseif x==3
if y==0 
if z==0 
result=RAy0300(alpha,A,Farray);
 elseif z==1
result=RAy0301(alpha,A,Farray);
 elseif z==2
result=RAy0302(alpha,A,Farray);
 elseif z==3
result=RAy0303(alpha,A,Farray);
elseif z==4 
 result=RAy0304(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==1
if z==0 
result=RAy0310(alpha,A,Farray);
 elseif z==1
result=RAy0311(alpha,A,Farray);
 elseif z==2
result=RAy0312(alpha,A,Farray);
 elseif z==3
result=RAy0313(alpha,A,Farray);
elseif z==4 
 result=RAy0314(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==2
if z==0 
result=RAy0320(alpha,A,Farray);
 elseif z==1
result=RAy0321(alpha,A,Farray);
 elseif z==2
result=RAy0322(alpha,A,Farray);
 elseif z==3
result=RAy0323(alpha,A,Farray);
elseif z==4 
 result=RAy0324(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==3
if z==0 
result=RAy0330(alpha,A,Farray);
 elseif z==1
result=RAy0331(alpha,A,Farray);
 elseif z==2
result=RAy0332(alpha,A,Farray);
 elseif z==3
result=RAy0333(alpha,A,Farray);
elseif z==4 
 result=RAy0334(alpha,A,Farray);
 else 
 result=0; 
 end

elseif y==4 
 if z==0 
result=RAy0340(alpha,A,Farray);
 elseif z==1
result=RAy0341(alpha,A,Farray);
 elseif z==2
result=RAy0342(alpha,A,Farray);
 elseif z==3
result=RAy0343(alpha,A,Farray);
elseif z==4 
 result=RAy0344(alpha,A,Farray);
 else 
 result=0; 
 end

 else 
 result=0; 
 end

elseif x==4 
 if y==0 
if z==0 
result=RAy0400(alpha,A,Farray);
 elseif z==1
result=RAy0401(alpha,A,Farray);
 elseif z==2
result=RAy0402(alpha,A,Farray);
 elseif z==3
result=RAy0403(alpha,A,Farray);
elseif z==4 
 result=RAy0404(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==1
if z==0 
result=RAy0410(alpha,A,Farray);
 elseif z==1
result=RAy0411(alpha,A,Farray);
 elseif z==2
result=RAy0412(alpha,A,Farray);
 elseif z==3
result=RAy0413(alpha,A,Farray);
elseif z==4 
 result=RAy0414(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==2
if z==0 
result=RAy0420(alpha,A,Farray);
 elseif z==1
result=RAy0421(alpha,A,Farray);
 elseif z==2
result=RAy0422(alpha,A,Farray);
 elseif z==3
result=RAy0423(alpha,A,Farray);
elseif z==4 
 result=RAy0424(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==3
if z==0 
result=RAy0430(alpha,A,Farray);
 elseif z==1
result=RAy0431(alpha,A,Farray);
 elseif z==2
result=RAy0432(alpha,A,Farray);
 elseif z==3
result=RAy0433(alpha,A,Farray);
elseif z==4 
 result=RAy0434(alpha,A,Farray);
 else 
 result=0; 
 end

elseif y==4 
 if z==0 
result=RAy0440(alpha,A,Farray);
 elseif z==1
result=RAy0441(alpha,A,Farray);
 elseif z==2
result=RAy0442(alpha,A,Farray);
 elseif z==3
result=RAy0443(alpha,A,Farray);
elseif z==4 
 result=RAy0444(alpha,A,Farray);
 else 
 result=0; 
 end

 else 
 result=0; 
 end

 else 
 result=0; 
 end
