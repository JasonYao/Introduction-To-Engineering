% By Jason Yao

% Exercise 1
% Reads input data
[data, raw] = xlsread('Traffic Project Example Data.xlsx'); % Reads the example data into the project
numCars = data(:,1); % Separates the number of cars from first dataset
numCars2 = data(:,2); % Separates the number of cars from second dataset
numCars3 = data(:,3); % Separates the number of cars from third dataset

% Initializes numCars to the value in numCars 3, in order to solve for exercise 1
numCars = numCars3;

% Goes through each data set, replaces any -1's with previous datavalue
indexii = find(numCars < 0); % Identifies any 15 minute timeframes with -1
numIndexii = find(indexii); % Identifies the indexii.length
while (numIndexii > 0) % Creates a while loop that iterates as long as indexii.length > 0
    numCars(indexii) = numCars(indexii - 1); % Sets any -1 values to the previous value
    indexii = find(numCars < 0); % Resets the indexii list of -1 values
    numIndexii = find(indexii); % Resets the indexii.length list
end % ends the while loop, reiterates if indexii.length > 0

% Calculates hourly flow
hourlyIndex = 1:4; % Creates the number of values to sum in an hour
hourlyVector = 0; % initial value for hourly vector, otherwise it itinitializes as a matrix
numCarsLength = find(numCars > 0); % find the total number of data values

% Creates a while loop to iterate as long as hour's end is less
while hourlyIndex(end) <= numCarsLength(end) % iterates through the loop until the end of the index > total number
    hourlyVector(end + 1) = sum(numCars(hourlyIndex)); % finds the four values of that time, and sums it up
    hourlyIndex = hourlyIndex + 1; % Increments the hourly index
end
hourlyVector = hourlyVector(2:end); % Kills off the first element we used to initialize the vector

% Finds the maximum hourly flow
vMax = max(hourlyVector);

% Finds the PHF (peak hourly flow)
vMaxIndex = find(hourlyVector == vMax); % Finds the index of the hourly flow
v15 = max(numCars(vMaxIndex:vMaxIndex + 3)); % Finds the maximum 15 flow
peakHourlyFlow = vMax/(4*v15); % identifies the peak hourly flow (based on sheet's equation)
disp('The peak hourly flow for the data in Table 5 is:');disp(peakHourlyFlow)

