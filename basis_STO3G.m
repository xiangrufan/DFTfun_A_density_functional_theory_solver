function [spread,contra,shape,L] = basis_STO3G (name)
if name =='F'

spread1s=[ 166.6791300  , 30.3608120 , 8.2168207 ];
spread2s=[6.4648032, 1.5022812 ,  0.4885885 ];
spread2p=[6.4648032, 1.5022812 ,  0.4885885 ];
contra1s=[ 0.15432897,   0.53532814, 0.44463454  ];
contra2s=[ -0.09996723   , 0.39951283 , 0.70011547  ];
contra2p=[ 0.15591627   , 0.60768372  , 0.39195739];
spread=[spread1s;spread2s;spread2p];
contra=[contra1s;contra2s;contra2p];
shape=[0,0,1];
L=[length(spread1s),length(spread2s),length(spread2p)];
elseif name =='N'

spread1s=[  99.1061690  , 18.0523120  ,4.8856602 ];
spread2s=[ 3.7804559,   0.8784966 ,    0.2857144  ];
spread2p=[ 3.7804559,   0.8784966 ,    0.2857144  ];
contra1s=[ 0.15432897   ,   0.53532814, 0.44463454  ];
contra2s=[ -0.09996723    , 0.39951283  , 0.70011547  ];
contra2p=[ 0.15591627   , 0.60768372  ,0.39195739 ];
spread=[spread1s;spread2s;spread2p];
contra=[contra1s;contra2s;contra2p];
shape=[0,0,1];
L=[length(spread1s),length(spread2s),length(spread2p)];
elseif name =='H'

spread1s=[ 3.42525091  ,0.62391373 , 0.16885540];
contra1s=[  0.15432897   ,   0.53532814 ,   0.44463454   ];
spread=[spread1s;];
contra=[contra1s;];
shape=[0];
L=[length(spread1s) ];

end

end