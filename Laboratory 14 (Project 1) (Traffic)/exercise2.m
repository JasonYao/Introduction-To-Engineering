% By Jason Yao

% Exercise 2
% Calls the PHF function in order to calculate the peak hourly flow (points a and c)
disp('The peak hourly flow for the data in Table 1 is:');disp(phfExample(1))
disp('The peak hourly flow for the data in Table 3 is:');disp(phfExample(2))
disp('The peak hourly flow for the data in Table 5 is:');disp(phfExample(3))

% Plots the number of vehicles for each 15 minute interval (point b)
% Reads input data
[data, raw] = xlsread('Traffic Project Example Data.xlsx'); % Reads the example data into the project
numCars = data(:,1); % Separates the number of cars from first dataset
numCars2 = data(:,2); % Separates the number of cars from second dataset
numCars3 = data(:,3); % Separates the number of cars from third dataset

% Goes through each data set, replaces any -1's with previous datavalue
newNumCars = fixSet(numCars);

newNumCars2 = fixSet(numCars2);

newNumCars3 = fixSet(numCars3);

% Finds the amount of time in the dataset
index = find(numCars); % Finds the number of 15 minute intervals (vector form)
totalIndex = find(index == index(end)); % number of 15 minute intervals (single integer form)
time = 15:15:totalIndex*15; % Creates a time vector at each 15 minute intervals

% Plots the fixed data sets versus each 15 minute time interval
figure(1)
plot(time, newNumCars, time, newNumCars2, time, newNumCars3) % plots the three fixed data sets
title('Number of Vehicles Over Time');
xlabel('Time (minutes)');
ylabel('Number of vehicles (Vehicles)');
legend('Data Set 1','Data Set 2', 'Data Set 3')

