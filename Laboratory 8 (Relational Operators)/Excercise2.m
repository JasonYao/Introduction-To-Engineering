% By Jason Yao
[data,txt,raw] = xlsread('Portland Weather Data 2013.xlsx');
date = 1:365; % sets a vector to be the number of days
maxTemp = data(:,1); % copy second column to power
plot(date,maxTemp) % plots the graph
xlabel('Date')
ylabel('Maximum Temperature (fahrenheit)')
title('Date versus Maximum Temperature')

% To find the number of cold days in Portland (temperature ? 40)
disp('Number of cold days:')
sum(maxTemp <= 40)

% To find the number of nice days in Portland (70? temperature ? 85 °F)
disp('Number of nice days:')
sum(70 <= maxTemp & maxTemp <= 85)


