addpath('..\');
options = optimset('PlotFcns',@optimplotfval);
[x] = fminsearch(@myCO_func,1.5,options);