% By Jason Yao

% Exercise 1

% Constants
% Define thermal diffusivity for aluminum.
alpha = 97.1 * 10^(-6);
% Define the total time, in seconds.
totalTime = 300;
% Define delta t, in seconds.
dt = 0.1;
% Define number of nodes in the bar
nn = 5;
% Define the length of the bar, in meters
len = 0.2;

% Define the number of time slices to be analyzed.
slices = totalTime/dt + 1; % Add one, since time starts at 0.

% Define matrix TM with slices rows and nn columns.
TM = zeros(slices, nn);

% The first row is 20 degrees C, the initial temperature.
% The first and last columns are 200 degrees C, since the bar
% has constant heat sources.
TM(1, :) = 20; % set first row to 20 degrees C
TM(:, 1) = 200; % set first column to 200 degrees
TM(:, nn) = 200; % set last column to 200 degrees

% For loops to fill in the rest of the gradient
for j = 2: slices
    for k = 2:(nn - 1)
        % Calculate the term delta x squared
        dx2 = (len / (nn - 1))^2;
        TM(j,k) = alpha*dt/dx2*(TM(j-1,k+1) - 2*TM(j-1,k) + TM(j-1,k-1)) + TM(j-1,k);
    end
end
plot(0:0.1:300, TM(:,3))
xlabel = ('time');
ylabel = ('Temperature');
title = ('Temperature of Central Node');




