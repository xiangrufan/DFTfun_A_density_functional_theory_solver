addpath('..\');
for i =1:100
        R(i)=1.7+(i)*0.01;
    energy(i)=myCO_func(R(i));
end
plot(R,energy)
%% 
title('Potential energy surface of CO')
xlabel('distance')
ylabel('Energy')