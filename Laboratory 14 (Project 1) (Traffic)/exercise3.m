% By Jason Yao

% Exercise 3

% Reads input data
[data, raw] = xlsread('Traffic Project.xlsx'); % Reads the example data into the project
numCarsSE = data(:,1); % Separates the number of cars heading towards the SE
numCarsNW = data(:,2); % Separates the number of cars heading towards the NW

newNumCarsSE = numCarsSE;
newNumCarsNW = numCarsNW;

% Goes through each data set, replaces any -1's with previous datavalue,
% and calculates the peak hourly flow
phfSE = phf(newNumCarsSE);
phfNW = phf(newNumCarsNW);

% Outputs the calculated PHF for the SE and NW direction
disp('The peak hourly flow for vehicles traveling SE is: ');disp(phfSE)
disp('The peak hourly flow for vehicles traveling NW is: ');disp(phfNW)

% Check: Checks to see the data output was fixed
fixedNumCarsSE = fixSetActual(newNumCarsSE);
fixedNumCarsNW = fixSetActual(newNumCarsNW);
%disp('The fixed number of vehicles traveling SE per 15 minutes is: ');disp(fixedNumCarsSE)
%disp('The fixed number of vehicles traveling NW per 15 minutes is: ');disp(fixedNumCarsNW)

% Plots the fixed data sets versus each 15 minute time interval

% Finds the amount of time in the dataset
totalIndex = numel(fixedNumCarsSE); % Finds the number of 15 minute intervals (single integer form)
time = 15:15:totalIndex*15; % Creates a time vector at each 15 minute intervals

figure(1)
plot(time, fixedNumCarsSE, time, fixedNumCarsNW) % plots the two fixed data sets
title('Number of Vehicles Traveling Willamette Over Time');
xlabel('Time (minutes)');
ylabel('Number of vehicles (Vehicles)');
legend('Vehicles Traveling SE','Vehicles Traveling NW')


