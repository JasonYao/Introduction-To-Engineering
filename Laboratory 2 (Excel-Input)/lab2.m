[data, txt, raw] = xlsread('Solar Panel Data.xlsx'); % reads excel data
hours = data(:,1); % copy first column to hours
power = data(:,3); % copy second column to power
power2 = data(:,8); % copy 8th column to power2
plot(hours, power, hours, power2) % plots power & power2 on the hours
xlabel('Hours since Midnight') % labels the x-axis
ylabel('Average Power(kW)') % labels the y-axis
title('Comparison of Power Draw between Nov 2 & Oct 28') % puts a title in
legend('October 28th Draw','November 2nd Draw') % inputs a legend