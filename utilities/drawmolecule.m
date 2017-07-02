function aaa = drawmolecule(gca,Rnuc)
[num_Nuc,~]=size(Rnuc);
[xx,yy,zz]=sphere(20);% 20是sphere的 马赛克 度
xx0=0.2*xx;
yy0=0.2*yy;
zz0=0.2*zz;
for i =1:num_Nuc
      
xx=xx0+Rnuc(i,1);
yy=yy0+Rnuc(i,2);
zz=zz0+Rnuc(i,3);
aaa(i)=surf(yy,xx,zz,'parent',gca);
end

end