% By Team TOO SCHOOL FOR COOL
% By Jason "J MOney" Yao, Antonia "xXTondizzleXx" Molina & Nick "N Dawg" Huey

% Derivative Method
load ECG_data.mat; % Loads the data into the script file

% Initializes the variable, for easy changing of signals
vectorX = unknown2;

% Calculates the onsetTime, returns datasets as well for easy graphing
[onsetTime, set1, set2, set3, averageSet, peaks, location, locationSet1, locationSet2, locationSet3] = calculateOnset(vectorX);

% Plots the data

% Plots the original signal highlighting peaks
figure(1)
plot(1:length(vectorX), vectorX, location, peaks, 'o');
title('Electrocardiogram (ECG) Signal');
xlabel('Time (ms)');
ylabel('Voltage (mV)');
legend('Heart Signal');

% Plots the 80ms before each peak
figure(2)
time = -80:8:-8;
plot(time, vectorX(locationSet1), time, vectorX(locationSet2), time, vectorX(locationSet3), time, mean([vectorX(locationSet1) vectorX(locationSet3) vectorX(locationSet3)], 2));
title('Electrocardiogram (ECG) Signal');
xlabel('Time (ms)');
ylabel('Voltage (mV)');
legend('Set 1','Set 2','Set 3','Average Set');

% Plots the derivative of the 80ms before each peak
figure(3)
plot(time, set1, time, set2, time, set3, time, averageSet);
title('Electrocardiogram (ECG) Signal Derivative');
xlabel('Time (ms)');
ylabel('Voltage Derivative (dmV/dt)');
legend('Set 1','Set 2','Set 3','average');