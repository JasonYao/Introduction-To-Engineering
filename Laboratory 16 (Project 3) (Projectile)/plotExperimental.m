% By Team Awesome

% Formatting
format long

% Plots the experimental data
[data, raw] = xlsread('experimentdata.xlsx');


ballNumber = data(:, 1);

SLIGHTSHOT_HEIGHT = 3 % A constant

horizontalStretch = data(:, 3)

% Calculates launch angle theta
launchAngleTheta = atan(SLIGHTSHOT_HEIGHT/horizontalStretch)

horizontalDistance = data(:, 4);


% Generates the experimental plot relating theta to total horizontal distance traveled