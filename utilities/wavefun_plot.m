    %plot wavefunction
  
    xvals = -3:0.1:3;
    yvals = -3:0.1:3;
    zvals = -3:0.1:3;
    nel = numel(xvals);
    
   
  
    orbit2plot=7;% input orbit to plot here-for CO2 homo is orbit #7, LUMO is #8
psi1=  integrate_wave(xvals,yvals,zvals,d,c,spreads,shapematrix,centers,K,L,orbit2plot);
 
     edensity=psi1 ;
    %  surf(xvals,yvals',psi2+psi1)
    maximus=max(max(max(edensity)));
    ratio=0.5;
    figure;
       %%
       %Volume visualization  
       currentaxis=gca;
[X,Y,Z]=meshgrid(yvals,xvals,zvals);
colordata= isovalue(edensity);
      hold on
       
      for ii=3 %循环用来画圈圈
%               clear f;
 [v,f] = isosurf(edensity, [],  0.1, 0, 0); v=v'; f=f';%此函数来自底层mex程序，也就是c/c++编的，矩阵排列和matlab习惯不同 %改成matlab的排列方式
  [vneg,fneg] = isosurf(edensity, [],  -0.1, 0, 0); vneg=vneg'; fneg=fneg';%此函数来自底层mex程序，也就是c/c++编的，矩阵排列和matlab习惯不同 %改成matlab的排列方式
         v= axis_dim (X,Y,Z,v); %修改坐标到xyz的尺度
           vneg= axis_dim (X,Y,Z,vneg); 
    p(i) = patch('Vertices', v, 'Faces', f, 'EdgeColor', 'none','FaceVertexCData', colordata, ...
          'FaceColor', 'red','facelighting','flat','facealpha',ii*0.1);
      patch('Vertices', vneg, 'Faces', fneg, 'EdgeColor', 'none','FaceVertexCData', colordata, ...
          'FaceColor', 'blue','facelighting','flat','facealpha',ii*0.1);
     drawnow
      end
  %画个密度投影图，然后移动到底下
   surface1 = pcolor(yvals,xvals,sum(edensity,3));

       set(surface1,'zdata',min(zvals)*ones(length(yvals),length(xvals)));
  drawmolecule(currentaxis,Rnuc);
  view(3)
    camlight  
  