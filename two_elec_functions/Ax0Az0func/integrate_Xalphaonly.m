function [weightss,rhos] = integrate_Xalphaonly(xyz,d,spreads,shapematrix,centers,K,L,P)
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

 r1=r1(1:end-1);% the end is INF, so need to truncate it
 w1=w1(1:end-1);

surface_points=getLebedevSphere(302);
   resulttotal=0;
   
   weights=[0];
 
   points0=[0,0,0];
   originalpoints=[surface_points.x,surface_points.y,surface_points.z];
     for ix=1:length(r1)% truncate grid 
       rnow=r1(ix);  
        if rnow<8
     
     points0 =  [points0;originalpoints*rnow];
     weights= [weights;w1(ix)*(surface_points.w)*rnow^2];
  
        end
    end
    points0=points0(2:end,:);
    weights=weights(2:end);
     
    
   
 totalresult=0;
   for iatom=1:ncenters
        for abc=1:3%xyz
       points(:,abc)=points0(:,abc)+xyz(iatom,abc);
        end
     rnowx= points(:,1);
     rnowy= points(:,2);
    rnowz= points(:,3);
        iatom=iatom;% computee Smat
         ri=sqrt((rnowx-xyz(iatom,1)).^2+(rnowy-xyz(iatom,2)).^2+(rnowz-xyz(iatom,3)).^2);
       for jatom=1:ncenters
         if iatom~=jatom
          
        
       rj=sqrt((rnowx-xyz(jatom,1)).^2+(rnowy-xyz(jatom,2)).^2+(rnowz-xyz(jatom,3)).^2);      
       rmu=(ri-rj)/dist(iatom,jatom);%判断 积分的那个点在 ii 和jj中间线的位置       
       partfun = @(r) 1.5*r-0.5*r.^3;% Compute weight by partition space
      tmp1= partfun(partfun(partfun(rmu)));
      spaceweight=0.5*(1-tmp1);% 无需归一化
         end
       end
    
% oneatomresult= sum(weights.*spaceweight.*get_density(points(:,1),points(:,2),points(:,3),d,spreads,shapematrix,centers,K,L,P));
weightss{iatom}=weights.*spaceweight;
rho0= get_densitynck(points(:,1),points(:,2),points(:,3),d,spreads,shapematrix,centers,K,L,P);
   
 for mu=1:K
     for nu=1:K
rhos{iatom,mu,nu}= (rho0.^(1/3)).*get_density(mu,nu,points(:,1),points(:,2),points(:,3),d,spreads,shapematrix,centers,K,L,P);
   
     end
 end
   
 
   
   end
 
 
 
 
end
 
