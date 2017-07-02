   a=0;b=0;c=0;dd=0;e=0;f=0;g=0;
   h=0;
   for xx=1:10 
        for yy=1:10
            for zz=1:10
                for ww=1:10
                    
           a=a+ double(~(( two_elec(yy,xx,ww,zz)-two_elec(xx,yy,zz,ww)) <1e-5 ));
 
         
%                c=c+ double(~(( two_elec(xx,ww,zz,yy)-two_elec(xx,yy,zz,ww)) <1e-5 )); % 
           dd=dd+ double(~(( two_elec(ww,zz,yy,xx)-two_elec(xx,yy,zz,ww)) <1e-5 )); %  
             e=e+ double(~(( two_elec(yy,xx,zz,ww)-two_elec(xx,yy,zz,ww)) <1e-5  )); %  
           f=f+ double(~(( two_elec(ww,zz,xx,yy)-two_elec(xx,yy,zz,ww)) <1e-5 ));% wrong  
             g=g+ double(~(( two_elec(xx,yy,ww,zz)-two_elec(xx,yy,zz,ww)) <1e-5));
           h=h+ double(~(( two_elec(zz,ww,yy,xx)-two_elec(xx,yy,zz,ww)) <1e-5  ));% wrong 
           
           esc= ( two_elec(zz,ww,xx,yy)-two_elec(xx,yy,zz,ww))  ;
             b=b+ double(~(esc<1e-4 ));  % wrong for 1,1,14
           if esc>1e-4 
               'Left-right Exchange wrong!'
              asc= xx;bsc=yy;csc=zz;dsc=ww;
             gsc=esc;
%             double(~(( two_elec(zz,ww,xx,yy)-two_elec(xx,yy,zz,ww)) <1e-3 ))
           
           end
% ( two_elec(yy,xx,ww,zz)-two_elec(xx,yy,zz,ww)) <1e-5 
                end
            end
        end
   end
%    a
%   b
%   c
%   dd
%   e
%   f
%   g
%   h
%%
   a=0;b=0;c=0;dd=0;e=0;f=0;g=0;
   h=0;
   for xx=1:10 
        for yy=1:10
            for zz=1:10
                for ww=1:10
                    
           a=a+ double(~(( two_elec(yy,xx,ww,zz)-two_elec(xx,yy,zz,ww)) <1e-5 ));
 
         
%                c=c+ double(~(( two_elec(xx,ww,zz,yy)-two_elec(xx,yy,zz,ww)) <1e-5 )); % 
           dd=dd+ double(~(( two_elec(ww,zz,yy,xx)-two_elec(xx,yy,zz,ww)) <1e-5 )); %  
             e=e+ double(~(( two_elec(yy,xx,zz,ww)-two_elec(xx,yy,zz,ww)) <1e-5  )); %  
           f=f+ double(~(( two_elec(ww,zz,xx,yy)-two_elec(xx,yy,zz,ww)) <1e-5 ));% wrong  
             g=g+ double(~(( two_elec(xx,yy,ww,zz)-two_elec(xx,yy,zz,ww)) <1e-5));
           h=h+ double(~(( two_elec(zz,ww,yy,xx)-two_elec(xx,yy,zz,ww)) <1e-5  ));% wrong 
           
           esc= ( two_elec(zz,ww,xx,yy)-two_elec(xx,yy,zz,ww))  ;
             b=b+ double(~(esc<1 ));  % wrong for 1,1,14
           if esc>1e-4 
               'Left-right Exchange wrong!'
              asc= xx;bsc=yy;csc=zz;dsc=ww;
             gsc=esc;
%             double(~(( two_elec(zz,ww,xx,yy)-two_elec(xx,yy,zz,ww)) <1e-3 ))
           
           end
% ( two_elec(yy,xx,ww,zz)-two_elec(xx,yy,zz,ww)) <1e-5 
                end
            end
        end
   end
