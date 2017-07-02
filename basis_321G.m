function [spread,contra,shape,L] = basis_321G (name)
if name =='C'
shellstruct={'1s','2s','2p','2s2','2p2'};
shape=[0,0,1,0,1];
spread1s =[172.2560000,25.9109000, 5.5333500   ];
spread2s=[ 3.6649800,0.7705450];
spread2p=[ 3.6649800,0.7705450];
spread2s2=[ 0.1958570  ];
spread2p2=[ 0.1958570  ];

contra1s=[ 0.0617669 , 0.3587940,0.7007130 ];
contra2s=[ -0.3958970, 1.2158400 ];
contra2p=[ 0.2364600,   0.8606190  ];
contra2s2=[ 1 ];
contra2p2=[ 1 ];



L=[length(spread1s),length(spread2s),length(spread2p),length(spread2s2),length(spread2p2)];
[spread,contra]=fillinshell ();
 


elseif name =='O'
shellstruct={'1s','2s','2p','2s2','2p2'};
shape=[0,0,1,0,1];
spread1s =[  322.0370000, 48.4308000  , 10.4206000   ];
spread2s=[  7.4029400,1.5762000 ];
spread2p=[  7.4029400,1.5762000 ];
spread2s2=[0.3736840    ];
spread2p2=[ 0.3736840    ];
contra1s=[  0.0592394  ,  0.3515000  , 0.7076580  ];
contra2s=[-0.4044530 , 1.2215600   ];
contra2p=[   0.2445860 ,    0.8539550    ];
contra2s2=[ 1 ];
contra2p2=[ 1 ];


L=[length(spread1s),length(spread2s),length(spread2p),length(spread2s2),length(spread2p2)];
[spread,contra]=fillinshell ();
 

elseif name =='H'
shellstruct={'1s','1s2'};

spread1s=[5.4471780, 0.8245470 ];
contra1s=[0.1562850 , 0.9046910  ];
spread1s2=[ 0.1831920 ];
contra1s2=[1];
shape=[0,0];
L=[length(spread1s) ,length(spread1s2) ];
[spread,contra]=fillinshell ();


end
% put function inside another function!!! to enable it access all the
% variables, NO need to pass anyvariable to the function
function [spread,contra]=fillinshell ()
    arraylength=max(L);
for ix=1:length(shellstruct)
    currentshellspread=eval(['spread',shellstruct{ix}]);
    currentshellcontra=eval(['contra',shellstruct{ix}]);
spread(ix,:)=[currentshellspread,zeros(1,arraylength-length(currentshellspread))] ;
contra(ix,:)=[currentshellcontra,zeros(1,arraylength-length(currentshellcontra))] ;
end

end

end


 