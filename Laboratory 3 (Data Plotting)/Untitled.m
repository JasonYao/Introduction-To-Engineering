L1 = 1; % L1 is initialized to a length of 1m
L2 = 0.5; % L2 is initialized to a length of 1m
A_d = 0:0.5:180;
A_r = A_d * pi/180;
B = asin(L2*sin(A_r)/L1);
d = L1*cos(B)+ L2*cos(A_r);
plot(A_r,d) % plots the data of d versus A_r
xlabel('d') % labels the d axis
ylabel('A_r') % labels the A_r
title('d versus A_r')
grid