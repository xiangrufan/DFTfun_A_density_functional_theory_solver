K=10;
flagtmp= zeros(K,K,K,K);
for xx=1:K
         for yy=1:K
             for zz=1:K
                 for ww=1:K
                         if two_elec_gauss(xx,yy,zz,ww) ~=0
                        
 two_elec_gauss(yy,xx,ww,zz)=two_elec_gauss(xx,yy,zz,ww); 
 two_elec_gauss(ww,zz,yy,xx)=two_elec_gauss(xx,yy,zz,ww);
 two_elec_gauss(yy,xx,zz,ww)=two_elec_gauss(xx,yy,zz,ww);
 two_elec_gauss(ww,zz,xx,yy)=two_elec_gauss(xx,yy,zz,ww); 
  two_elec_gauss(xx,yy,ww,zz)=two_elec_gauss(xx,yy,zz,ww);
 two_elec_gauss(zz,ww,yy,xx)=two_elec_gauss(xx,yy,zz,ww); 
 two_elec_gauss(zz,ww,xx,yy)=two_elec_gauss(xx,yy,zz,ww); 
 
 flagtmp(yy,xx,ww,zz)=1;
 flagtmp(ww,zz,yy,xx)=1;
 flagtmp(yy,xx,zz,ww)=1;
 flagtmp(ww,zz,xx,yy)=1; 
 flagtmp(xx,yy,ww,zz)=1;
 flagtmp(zz,ww,yy,xx)=1; 
 flagtmp(zz,ww,xx,yy)=1;

                     end
                 end
             end
         end
 end
           