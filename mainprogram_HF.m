 
%*****************************************************************************
%     <Hatree fock code project HF_fun>
%     Copyright (C) <2014>  <X fan@ Clarkson Univ>
% 
%     This program is free software: you can redistribute it and/or modify
%     it under the terms of the GNU General Public License as published by
%     the Free Software Foundation, either version 3 of the License, or
%     (at your option) any later version.
% 
%     This program is distributed in the hope that it will be useful,
%     but WITHOUT ANY WARRANTY; without even the implied warranty of
%     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%     GNU General Public License for more details.
% 
%     You should have received a copy of the GNU General Public License
%     along with this program.  If not, see <http://www.gnu.org/licenses/>.
%*****************************************************************************
% HF/DFT 示例代码desu
% 
%*****************************************************************************
 %  
 clear all
 Farraytmp=load('Farray.mat');
 Farray=Farraytmp.Fvunum;
 
 
deletelimit=0;
  [species,xyz] = findgeomgjf('gaussian_testjob\co.gjf');%　usig reorient in gaussian before using this code, this can accelerate the calculation a lot. 
  xyz=xyz*1.889725989;
[spreads,contras,shapematrix,centers,Nelec,Nnuc,Nucchg,K,L,shells_spread,shells_contra,shellcenters,shell_ang]= initialization_HF (species,xyz,'STO2G');% The code only support STO2G and 321G basis set
 d=contras;
 nucchg=Nucchg;
save ('shellinputs','shells_spread','shells_contra','shellcenters','shell_ang')
    internucEnergy=0;
    
 
  
     for ix =1:Nnuc
             for iy=(ix+1):(Nnuc)
                 distance = xyz(ix,:)- xyz(iy,:);
                internucEnergy=internucEnergy+nucchg(ix)*nucchg(iy)/(distance*distance')^0.5;
 
             end
     end   
     internucEnergy
%%
% Compute all single electron operations

  
    % 算出hatree-fock方程各个矩阵的值，存起来
    S = zeros(K,K);%S矩阵
    T = zeros(K,K);%T矩阵
    V = zeros(K,K);%V矩阵
    two_elec2_diag=zeros(K,K);
    flag2 = zeros(K,K); %立flag
    
    %Calculate the parts of the Fock matrix hamiltonian:
       
    for mu=1:K    % 对每个轨道
        for nu = 1:K       % 与另一个轨道的一个组成的高斯方程算积分
            if flag2(mu,nu)==0
               for p=1:L(mu)                % 对每个轨道的组成高斯方程
                    for q=1:L(nu)         
                    
                    RA = [centers(mu,1) centers(mu,2) centers(mu,3)];
                    RB = [centers(nu,1) centers(nu,2) centers(nu,3)];
                    alpha = spreads(mu,p);
                    beta = spreads(nu,q);
                    
                    S(mu,nu) = S(mu,nu) + d(mu,p)*d(nu,q)*...
                       myoverlap3(alpha,beta,shapematrix(mu,:),shapematrix(nu,:),RA,RB );
                    
                    T(mu,nu) = T(mu,nu) + d( mu,p)*d( nu,q)*...
                       mykinetic(alpha,beta,shapematrix(mu,:),shapematrix(nu,:),RA,RB );
                         
                    for i=1:Nnuc
                        RC = xyz(i,:);
                         V(mu,nu) = V(mu,nu) + d(mu,p)*d(nu,q)*...
                            nucchg(i)*mynuc_elec3(alpha,beta,shapematrix(mu,:),shapematrix(nu,:),RA,RB,RC,Farray);
                    end
                  
                   end
               end
               % 删除掉过小的积分
                  if abs(T(mu,nu))<deletelimit
                        T(mu,nu)=0;
                  end
                  if abs(V(mu,nu))<deletelimit
                        V(mu,nu)=0;
                  end
                  if abs(S(mu,nu))<deletelimit
                        S(mu,nu)=0;
                  end
                %强制对称性！！！
                S(nu,mu)=S(mu,nu);
                T(nu,mu)=T(mu,nu);
                V(nu,mu)=V(mu,nu);
                flag2(mu,nu)=1;
                flag2(nu,mu)=1;
            end
        end
    end
    %%
    % compute angular momentum part of the 2-electron integral
    % size of this temporary Efunc result matrix depend on the maximum
    % angular momentum and contraction
 efuncresultx=zeros(6,6,5,K,K);
 efuncresulty=zeros(6,6,5,K,K);
 efuncresultz=zeros(6,6,5,K,K );  
 
 for phi1=1:K
        for phi2=1:K
 shape1=squeeze(shapematrix(phi1,:));
 shape2=squeeze(shapematrix(phi2,:));
L1=shape1(1);
L2=shape2(1);
m1=shape1(2);
m2=shape2(2);
n1=shape1(3);
n2=shape2(3);
A = [centers(phi1,1) centers(phi1,2) centers(phi1,3)];
B = [centers(phi2,1) centers(phi2,2) centers(phi2,3)];
Ax=A(1);
Bx=B(1);
Ay=A(2);
By=B(2);
Az=A(3);
Bz=B(3);

 alphax1 = repmat(spreads( phi1,1:L(phi1))',[1,L(phi2)]) ;
 alphax2 = repmat((spreads( phi2,1:L(phi2))),[L(phi1),1]) ;
   for t1=0:(L1+L2)
            efuncresultx(1:L(phi1),1:L(phi2),t1+1,phi1,phi2)=Efunc(t1,L1,L2,alphax1,alphax2,Ax,Bx);
   end
      for u1=0:(m1+m2)
            efuncresulty(1:L(phi1),1:L(phi2),u1+1,phi1,phi2)=Efunc(u1,m1,m2,alphax1,alphax2,Ay,By);
      end    
      for v1= 0:(n1+n2)
            efuncresultz(1:L(phi1),1:L(phi2),v1+1,phi1,phi2)=Efunc(v1,n1,n2,alphax1,alphax2,Az,Bz);
      end

        end
 end
 
 for ix =0:4
     for iy=0:4
         for iz=0:4
  effuncall(:,:,ix+5*(iy)+25*(iz)+1,:,:) = efuncresultx(:,:,ix+1,:,:).*efuncresulty(:,:,iy+1,:,:).*efuncresultz(:,:,iz+1,:,:);
         end
     end
 end
  
    %%
    % Two-electron matrix elements
    % Calculate eq 3.211 w/ primitive Gaussians 3.212:
    %4D矩阵储存四中心，两电子积分
    two_elec2 = zeros(K,K,K,K);
     flag= zeros(K,K,K,K);% flag 是必须的，判断是否需要从新计算双电子积分
     
    %遍历每个轨道的每个高斯基函数。 因为是积分结果和 四个 高斯基函数 相关，需要遍历四次
    tic
    for mu=1:K
        for nu=1:K
            for lambda=1:K
                for sigma=1:K
                    if flag(mu,nu,lambda,sigma)==0
   two_elec2(mu,nu,lambda,sigma)=get2elec_tablevE ( mu,nu,lambda,sigma,centers,spreads,shapematrix,d,L,Farray,effuncall);

                    if abs(two_elec2(mu,nu,lambda,sigma))<1e-16
                         two_elec2(mu,nu,lambda,sigma)=0;
                    end
                    
       	two_elec2(nu,mu,lambda,sigma)=two_elec2(mu,nu,lambda,sigma);
        two_elec2(nu,mu,sigma,lambda)=two_elec2(mu,nu,lambda,sigma);
         two_elec2(mu,nu,sigma,lambda)=two_elec2(mu,nu,lambda,sigma);
       two_elec2(sigma,lambda,mu,nu )=two_elec2(mu,nu,lambda,sigma);
       two_elec2(lambda,sigma,mu,nu )=two_elec2(mu,nu,lambda,sigma);
        two_elec2(sigma,lambda,nu,mu )=two_elec2(mu,nu,lambda,sigma);
         two_elec2(lambda,sigma,nu,mu )=two_elec2(mu,nu,lambda,sigma);
         
         flag(nu,mu,lambda,sigma)=1;
        flag(nu,mu,sigma,lambda)=1;
         flag(mu,nu,sigma,lambda)=1;
       flag(sigma,lambda,mu,nu )=1;
       flag(lambda,sigma,mu,nu )=1;
        flag(sigma,lambda,nu,mu )=1;
         flag(lambda,sigma,nu,mu )=1;
             end
             
                end
            end
         
        end
       
    end
    
% cost 724 S for benzene STO2G 结果一致
% cost 392 S for benzene, if using symmetrtize and reorient in Gview. 
% cost 320 S for benzene, if using symmetrtize and reorient in Gview, run
% at home PC
%%
toc
% load aa
   
 % 插入制造正交性的东西
    [orbs,Dorbs]=eig(S);
    [orbs,Dorbs] = sorteig(orbs,Dorbs);    
    X=zeros(size(orbs));
    Y=X; %预备做密度矩阵出彩
        for i=1:K
        X(:,i)=orbs(:,i)/(Dorbs(i,i)^0.5);
        Y(:,i)=orbs(:,i)/(Dorbs(i,i) );
        end
     
    %以下是 解Roothaan 方程，包含迭代的 SCF
    %解 F*C(i)=D(i)*S*C(i) , Roothaan equations
 
    %D对应每条轨道的离子化能，c是轨道
 
      

    %F是C的函数，故需要迭代
    clear Pold
   it=0;
   deltaE=1; 
   H=T+V; 
 while it<100
     it=it+1;
%         step
  if it==1
        % 密度矩阵初猜
        %方法一，用不含电子间排斥力的F矩阵算出c
 
    Hprime=X'*H*X;
%     
    [cprime,D] = eig(Hprime);
     [cprime,D] = sorteig(cprime,D);
      c=X*cprime;  
        %方法二，随便猜
%            H=T+V; 
%          P=density;
            P = zeros(K,K); 
       for i=1:Nelec/2
            P=P+2*(c(:,i)*c(:,i)');
       end
  
        else 
             P = zeros(K,K); 
       for i=1:Nelec/2
            P=P+2*(c(:,i)*c(:,i)');
       end
         end
    
  
 % 密度方程混合 density matrix mixing!
          Pnew=P;
        if it >1
            mixratio=0.7;
                P=Pold*mixratio+Pnew*(1-mixratio) ;%密度混合可以防止出现复数的轨道能量。！！！            
                if it >10
                  mixratio=0.2;
                P=Pold*mixratio+Pnew*(1-mixratio) ;%密度混合可以防止出现复数的轨道能量。！！！       
                end
        end
        
 



%           Calculate the G(mu,nu) part of the Fock matrix, (eq 3.154)
        
        G=zeros(K,K);
        
        for mu=1:K
            for nu=1:K
                for lambda=1:K
                    for sigma=1:K
%                         G(mu,nu) = G(mu,nu) + ...                 
%                    P(lambda,sigma)*( two_elec2(mu,nu,sigma,lambda)... 
%                              - 0.5*two_elec2(mu,lambda,sigma,nu) );
                          G(mu,nu) = G(mu,nu)  + ...                 
         P(lambda,sigma)*( two_elec2(mu,nu,sigma,lambda)-0.5*two_elec2(mu,sigma,nu,lambda));         
                        if abs(G(mu,nu))<deletelimit
                            G(mu,nu)=0;
                        end
                    end
                end
            end
        end
        
F=G+H;          
          Fprime=X'*F*X;
        % 算总能量
        [cprime,D] = eig(Fprime);
        [cprime,D] = sorteig(cprime,D);    
%        D=real(D);
%          cprime=real(cprime);
     c=X*cprime;  
     
%          [c,D] = eig(S\F); 
%     [c,D] = sorteig(c,D);   
        
        energy=0.5*sum(sum(P.*G))+sum(sum(P.*(H)));
        Enonuc=energy;
        % 原子核间斥力
   
        energy = energy + internucEnergy ; %  
         
 if it>2
     deltaE=energyold-energy;

 end
 if abs(deltaE)<1e-11
         break
 end
    
    energyold=energy;
 Pold=P;
  
   
 end

it 
deltaE
 energy
 
