function result = rfunccode (x,y,z,alpha,A,Farray)
 Ay=A(2); 
 Az=A(3);if x==0 
if y==0 
if z==0 
result=RAy0Az0000(alpha,A,Farray);
 elseif z==1
result=RAy0Az0001(alpha,A,Farray);
 elseif z==2
result=RAy0Az0002(alpha,A,Farray);
 elseif z==3
result=RAy0Az0003(alpha,A,Farray);
elseif z==4 
 result=RAy0Az0004(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==1
if z==0 
result=RAy0Az0010(alpha,A,Farray);
 elseif z==1
result=RAy0Az0011(alpha,A,Farray);
 elseif z==2
result=RAy0Az0012(alpha,A,Farray);
 elseif z==3
result=RAy0Az0013(alpha,A,Farray);
elseif z==4 
 result=RAy0Az0014(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==2
if z==0 
result=RAy0Az0020(alpha,A,Farray);
 elseif z==1
result=RAy0Az0021(alpha,A,Farray);
 elseif z==2
result=RAy0Az0022(alpha,A,Farray);
 elseif z==3
result=RAy0Az0023(alpha,A,Farray);
elseif z==4 
 result=RAy0Az0024(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==3
if z==0 
result=RAy0Az0030(alpha,A,Farray);
 elseif z==1
result=RAy0Az0031(alpha,A,Farray);
 elseif z==2
result=RAy0Az0032(alpha,A,Farray);
 elseif z==3
result=RAy0Az0033(alpha,A,Farray);
elseif z==4 
 result=RAy0Az0034(alpha,A,Farray);
 else 
 result=0; 
 end

elseif y==4 
 if z==0 
result=RAy0Az0040(alpha,A,Farray);
 elseif z==1
result=RAy0Az0041(alpha,A,Farray);
 elseif z==2
result=RAy0Az0042(alpha,A,Farray);
 elseif z==3
result=RAy0Az0043(alpha,A,Farray);
elseif z==4 
 result=RAy0Az0044(alpha,A,Farray);
 else 
 result=0; 
 end

 else 
 result=0; 
 end

 elseif x==1
if y==0 
if z==0 
result=RAy0Az0100(alpha,A,Farray);
 elseif z==1
result=RAy0Az0101(alpha,A,Farray);
 elseif z==2
result=RAy0Az0102(alpha,A,Farray);
 elseif z==3
result=RAy0Az0103(alpha,A,Farray);
elseif z==4 
 result=RAy0Az0104(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==1
if z==0 
result=RAy0Az0110(alpha,A,Farray);
 elseif z==1
result=RAy0Az0111(alpha,A,Farray);
 elseif z==2
result=RAy0Az0112(alpha,A,Farray);
 elseif z==3
result=RAy0Az0113(alpha,A,Farray);
elseif z==4 
 result=RAy0Az0114(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==2
if z==0 
result=RAy0Az0120(alpha,A,Farray);
 elseif z==1
result=RAy0Az0121(alpha,A,Farray);
 elseif z==2
result=RAy0Az0122(alpha,A,Farray);
 elseif z==3
result=RAy0Az0123(alpha,A,Farray);
elseif z==4 
 result=RAy0Az0124(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==3
if z==0 
result=RAy0Az0130(alpha,A,Farray);
 elseif z==1
result=RAy0Az0131(alpha,A,Farray);
 elseif z==2
result=RAy0Az0132(alpha,A,Farray);
 elseif z==3
result=RAy0Az0133(alpha,A,Farray);
elseif z==4 
 result=RAy0Az0134(alpha,A,Farray);
 else 
 result=0; 
 end

elseif y==4 
 if z==0 
result=RAy0Az0140(alpha,A,Farray);
 elseif z==1
result=RAy0Az0141(alpha,A,Farray);
 elseif z==2
result=RAy0Az0142(alpha,A,Farray);
 elseif z==3
result=RAy0Az0143(alpha,A,Farray);
elseif z==4 
 result=RAy0Az0144(alpha,A,Farray);
 else 
 result=0; 
 end

 else 
 result=0; 
 end

 elseif x==2
if y==0 
if z==0 
result=RAy0Az0200(alpha,A,Farray);
 elseif z==1
result=RAy0Az0201(alpha,A,Farray);
 elseif z==2
result=RAy0Az0202(alpha,A,Farray);
 elseif z==3
result=RAy0Az0203(alpha,A,Farray);
elseif z==4 
 result=RAy0Az0204(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==1
if z==0 
result=RAy0Az0210(alpha,A,Farray);
 elseif z==1
result=RAy0Az0211(alpha,A,Farray);
 elseif z==2
result=RAy0Az0212(alpha,A,Farray);
 elseif z==3
result=RAy0Az0213(alpha,A,Farray);
elseif z==4 
 result=RAy0Az0214(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==2
if z==0 
result=RAy0Az0220(alpha,A,Farray);
 elseif z==1
result=RAy0Az0221(alpha,A,Farray);
 elseif z==2
result=RAy0Az0222(alpha,A,Farray);
 elseif z==3
result=RAy0Az0223(alpha,A,Farray);
elseif z==4 
 result=RAy0Az0224(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==3
if z==0 
result=RAy0Az0230(alpha,A,Farray);
 elseif z==1
result=RAy0Az0231(alpha,A,Farray);
 elseif z==2
result=RAy0Az0232(alpha,A,Farray);
 elseif z==3
result=RAy0Az0233(alpha,A,Farray);
elseif z==4 
 result=RAy0Az0234(alpha,A,Farray);
 else 
 result=0; 
 end

elseif y==4 
 if z==0 
result=RAy0Az0240(alpha,A,Farray);
 elseif z==1
result=RAy0Az0241(alpha,A,Farray);
 elseif z==2
result=RAy0Az0242(alpha,A,Farray);
 elseif z==3
result=RAy0Az0243(alpha,A,Farray);
elseif z==4 
 result=RAy0Az0244(alpha,A,Farray);
 else 
 result=0; 
 end

 else 
 result=0; 
 end

 elseif x==3
if y==0 
if z==0 
result=RAy0Az0300(alpha,A,Farray);
 elseif z==1
result=RAy0Az0301(alpha,A,Farray);
 elseif z==2
result=RAy0Az0302(alpha,A,Farray);
 elseif z==3
result=RAy0Az0303(alpha,A,Farray);
elseif z==4 
 result=RAy0Az0304(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==1
if z==0 
result=RAy0Az0310(alpha,A,Farray);
 elseif z==1
result=RAy0Az0311(alpha,A,Farray);
 elseif z==2
result=RAy0Az0312(alpha,A,Farray);
 elseif z==3
result=RAy0Az0313(alpha,A,Farray);
elseif z==4 
 result=RAy0Az0314(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==2
if z==0 
result=RAy0Az0320(alpha,A,Farray);
 elseif z==1
result=RAy0Az0321(alpha,A,Farray);
 elseif z==2
result=RAy0Az0322(alpha,A,Farray);
 elseif z==3
result=RAy0Az0323(alpha,A,Farray);
elseif z==4 
 result=RAy0Az0324(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==3
if z==0 
result=RAy0Az0330(alpha,A,Farray);
 elseif z==1
result=RAy0Az0331(alpha,A,Farray);
 elseif z==2
result=RAy0Az0332(alpha,A,Farray);
 elseif z==3
result=RAy0Az0333(alpha,A,Farray);
elseif z==4 
 result=RAy0Az0334(alpha,A,Farray);
 else 
 result=0; 
 end

elseif y==4 
 if z==0 
result=RAy0Az0340(alpha,A,Farray);
 elseif z==1
result=RAy0Az0341(alpha,A,Farray);
 elseif z==2
result=RAy0Az0342(alpha,A,Farray);
 elseif z==3
result=RAy0Az0343(alpha,A,Farray);
elseif z==4 
 result=RAy0Az0344(alpha,A,Farray);
 else 
 result=0; 
 end

 else 
 result=0; 
 end

elseif x==4 
 if y==0 
if z==0 
result=RAy0Az0400(alpha,A,Farray);
 elseif z==1
result=RAy0Az0401(alpha,A,Farray);
 elseif z==2
result=RAy0Az0402(alpha,A,Farray);
 elseif z==3
result=RAy0Az0403(alpha,A,Farray);
elseif z==4 
 result=RAy0Az0404(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==1
if z==0 
result=RAy0Az0410(alpha,A,Farray);
 elseif z==1
result=RAy0Az0411(alpha,A,Farray);
 elseif z==2
result=RAy0Az0412(alpha,A,Farray);
 elseif z==3
result=RAy0Az0413(alpha,A,Farray);
elseif z==4 
 result=RAy0Az0414(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==2
if z==0 
result=RAy0Az0420(alpha,A,Farray);
 elseif z==1
result=RAy0Az0421(alpha,A,Farray);
 elseif z==2
result=RAy0Az0422(alpha,A,Farray);
 elseif z==3
result=RAy0Az0423(alpha,A,Farray);
elseif z==4 
 result=RAy0Az0424(alpha,A,Farray);
 else 
 result=0; 
 end

 elseif y==3
if z==0 
result=RAy0Az0430(alpha,A,Farray);
 elseif z==1
result=RAy0Az0431(alpha,A,Farray);
 elseif z==2
result=RAy0Az0432(alpha,A,Farray);
 elseif z==3
result=RAy0Az0433(alpha,A,Farray);
elseif z==4 
 result=RAy0Az0434(alpha,A,Farray);
 else 
 result=0; 
 end

elseif y==4 
 if z==0 
result=RAy0Az0440(alpha,A,Farray);
 elseif z==1
result=RAy0Az0441(alpha,A,Farray);
 elseif z==2
result=RAy0Az0442(alpha,A,Farray);
 elseif z==3
result=RAy0Az0443(alpha,A,Farray);
elseif z==4 
 result=RAy0Az0444(alpha,A,Farray);
 else 
 result=0; 
 end

 else 
 result=0; 
 end

 else 
 result=0; 
 end
