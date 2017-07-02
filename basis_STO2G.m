function [spread,contra,shape,L] = basis_STO2G (name)
if name =='C'

spread1s =[27.38503303,4.874522075];
spread2s=[1.136748198,0.2883093603];
spread2p=[1.136748198,0.2883093603];
contra1s=[0.4301284983,0.6789135305];
contra2s=[0.04947176920,0.9637824081];
contra2p=[ 0.5115407076,0.6128198961];
spread=[spread1s;spread2s;spread2p];
contra=[contra1s;contra2s;contra2p];
shape=[0,0,1];
L=[length(spread1s),length(spread2s),length(spread2p)];

elseif name =='O'

spread1s=[49.98097117,8.896587673];
spread2s=[1.945236531,0.4933633506];
spread2p=[1.945236531,0.4933633506];
contra1s=[0.4301284983,0.6789135305];
contra2s=[0.04947176920,0.9637824081];
contra2p=[0.5115407076,0.6128198961];
spread=[spread1s;spread2s;spread2p];
contra=[contra1s;contra2s;contra2p];
shape=[0,0,1];
L=[length(spread1s),length(spread2s),length(spread2p)];
elseif name =='H'

spread1s=[1.309756377,0.233135974];
contra1s=[0.430128498,0.678913531];
spread=[spread1s;];
contra=[contra1s;];
shape=[0];
L=[length(spread1s) ];
elseif name =='F'
spread1s=[63.7352020,11.3448340];
spread2s=[2.4985480,0.6336980];
spread2p=[2.4985480,0.6336980];
contra1s=[0.4301280,0.6789140];
contra2s=[0.0494720,0.9637820];
contra2p=[0.5115410,0.6128200];
spread=[spread1s;spread2s;spread2p];
contra=[contra1s;contra2s;contra2p];
shape=[0,0,1];
L=[length(spread1s),length(spread2s),length(spread2p)];
end

end