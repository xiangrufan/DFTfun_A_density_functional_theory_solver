function [spreads,contras,shapematrix,centers,Nelec,Nnuc,Nucchg,K,L,shells_spread,shells_contra,shellcenters,shell_ang]= initialization_HF (species,xyz,basis)
K=0;

iz=1;
maximumcontra=0;
shell_ang=[];
iw=1;
for ix=1:length(species)% 循环每个原子
    name=species(ix);
    
     [spread_prim,contra_prim,shape_prim,L_prim] = feval(['basis_',basis],name);% use feval to call function STO2G or 321G indirectly
   
    
     % padding with 0, again....because different atom have different
     % maximum contraction number
    [num_of_rows,num_of_colums]= size(spread_prim);
    maximumcontra=max(num_of_colums,maximumcontra);
    spread_prim=[spread_prim,zeros(num_of_rows,maximumcontra-num_of_colums)];
    contra_prim=[contra_prim,zeros(num_of_rows,maximumcontra-num_of_colums)];
    
     shell_ang=[ shell_ang,shape_prim];
    for ixx=1:length(L_prim)   
    shells_spread{iw}=spread_prim(ixx,1:L_prim(ixx));
    shells_contra{iw}=contra_prim(ixx,1:L_prim(ixx));
    shellcenters{iw}=xyz(ix,:);
    iw=iw+1;
    
    end
     % the basis set inputer will have to provide a spread coeff and
     % contract coeff in a matrix format, hence we DO NOT need to worry
     % about different level of contractions between different shell in
     % current M file. (such as 6-31G, which has 6 contraction for 1s and 3 for 2s, 1 for 2s')
     if name =='C'
           Nucchg_atom=6;
     elseif name =='O'
           Nucchg_atom=8;
     elseif name =='F'
          Nucchg_atom=9;
     elseif name =='H'
          Nucchg_atom=1;
     elseif name =='N'
         Nucchg_atom=7;
     else
       disp(  'ERROR, atom not supported yet');
     end
     Nucchg(ix)=Nucchg_atom;
     
     for iy=1:length(shape_prim)%循环每个壳层
         currentshellshape=shape_prim(iy);
          if currentshellshape==0
             spreads(iz,:)=spread_prim(iy,:);
             
             contras(iz,:)=contra_prim(iy,:);
             shapematrix(iz,:)=[0,0,0];
             L(iz)=L_prim(iy);
             centers(iz,:) = xyz(ix,:); 
              
             contras(iz,:)=contras(iz,:).*(2*spreads(iz,:)/pi).^0.75;
             
         
             iz=iz+1;
             K=K+1;
         elseif currentshellshape==1
             spreads(iz,:)=spread_prim(iy,:);
             spreads(iz+1,:)=spread_prim(iy,:);
             spreads(iz+2,:)=spread_prim(iy,:);
             contras(iz,:)=contra_prim(iy,:);
             contras(iz+1,:)=contra_prim(iy,:);
             contras(iz+2,:)=contra_prim(iy,:);
             shapematrix(iz,:)=[1,0,0];
             shapematrix(iz+1,:)=[0,1,0];
             shapematrix(iz+2,:)=[0,0,1];
             centers(iz,:) = xyz(ix,:);  
             centers(iz+1,:) = xyz(ix,:);  
             centers(iz+2,:) = xyz(ix,:);  
             
             contras(iz:iz+2,:)= contras(iz:iz+2,:).*(2*spreads(iz:iz+2,:)/pi).^0.75;
             contras(iz:iz+2,:)=  contras(iz:iz+2,:).*spreads(iz:iz+2,:).^0.5*2;
             
           
              L(iz:iz+2)=L_prim(iy);
             iz=iz+3;
         end
         
     end
  

end

 
K=length(L);
Nelec=sum(Nucchg);
Nnuc=length(Nucchg);

    
 
    
end