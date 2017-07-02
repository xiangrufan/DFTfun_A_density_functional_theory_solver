function [weightss,rhos] = integrate_Xalpha(xyz,d,spreads,shapematrix,centers,K,L,P)
[ncenters,~]=size(xyz);
    
    for iatom=1:ncenters
        for jatom=1:ncenters
            if iatom~=jatom
    dist(iatom,jatom)=2.07;
            end
        end
    end
[r0,w1] = cheby2(75,[-1,1]);

 r1= 5* (1+r0)./(1-r0);% 
w1= w1'.*5*2./(r0-1).^2; % ri转换的导数

 r1=r1(1:end-1);
 w1=w1(1:end-1);
 
surface_points=getLebedevSphere(302);

   weights=[0];
 
   points0=[0,0,0];
   originalpoints=[surface_points.x,surface_points.y,surface_points.z];
        for ix=1:length(r1)
       rnow=r1(ix);  
        if rnow<10
     
     points0 =  [points0;originalpoints*rnow];
     weights= [weights;w1(ix)*(surface_points.w)*rnow^2];
  
        end
    end
    points0=points0(2:end,:);
    weights=weights(2:end);
    
 spaceweight=cell(ncenters,ncenters);
totalresult=0;
 for iatom=1:iatom% 需遍 网格 中心原子
   
        for abc=1:3%xyz
       points(:,abc)=points0(:,abc)+xyz(iatom,abc);
        end
     rnowx= points(:,1);
     rnowy= points(:,2);
    rnowz= points(:,3);
    
      
       for jatom=1:ncenters % j is the atom where the test atom j 遍历每个原子对 ij
        
       ri=sqrt((rnowx-xyz(jatom,1)).^2+(rnowy-xyz(jatom,2)).^2+(rnowz-xyz(jatom,3)).^2);
         iz=1;
           for katom=1:ncenters% ; and :!!!!
               
             if katom~=jatom
                
       rj=sqrt((rnowx-xyz(katom,1)).^2+(rnowy-xyz(katom,2)).^2+(rnowz-xyz(katom,3)).^2);      
       rmu=(ri-rj)/dist(jatom,katom);%判断 积分的那个点在 ii 和jj中间线的位置       
       partfun = @(r) 1.5*r-0.5*r.^3;% Compute weight by partition space
      tmp1= partfun(partfun(partfun(rmu)));
       
      spaceweight{jatom,katom}=(0.5*(1-tmp1));%  储存 遮蔽矩阵ij
      iz=iz+1;
            else
                  spaceweight{jatom,katom}=1;
           end
         
       end
       end
 
       %
   
       %
       
 
for ix=1:ncenters
pvec{ix}=1;
end

  for iw=1:ncenters
      
        for iz=1:ncenters     
    tmp=   spaceweight{iw,iz};
         pvec{iw}=pvec{iw}.*tmp;% 对每个点来说， 遮蔽矩阵的乘积=权重
      end  
   
  end
   
   oneatomresult=0;
   
  sum_pvec=0;
   for ix=1:ncenters
   sum_pvec=(pvec{ix}+sum_pvec);% at condition of 2 atoms, this is 1 for all the points in the space.  at condition of 3 atom, this range from 0.6 to 1. 
   end
   
 % 仅有靠近 网格中心点 的 网格各点被积分， 其他靠近其他中心原子的网格点被忽略掉了。 
 % 因此，pvec（for all iw that is not equal to iatom） 的唯一用处就是 归一化 积分权重。
    
        for abc=1:3%xyz
       points(:,abc)=points0(:,abc)+xyz(iatom,abc);
        end
       oneatomresult= oneatomresult+sum(weights.*pvec{iatom}./sum_pvec.*get_densitynck(points(:,1),points(:,2),points(:,3),d,spreads,shapematrix,centers,K,L,P));
  
       
 weightss{iatom}=weights.*pvec{iatom}./sum_pvec;
rho0= get_densitynck(points(:,1),points(:,2),points(:,3),d,spreads,shapematrix,centers,K,L,P);
   
 for mu=1:K
     for nu=1:K
rhos{iatom,mu,nu}= (rho0.^(1/3)).*get_density(mu,nu,points(:,1),points(:,2),points(:,3),d,spreads,shapematrix,centers,K,L,P);
   
     end
 end 
 
    
  totalresult=totalresult+ oneatomresult;
   
  
        
 end
  
 end
%    
 