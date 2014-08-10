function [peakHourlyFlow] = phf(dataSetInput)
%Calculates the peak hourly flow (PHF) of a given dataset

%initializes numCars to the value in the inputted data set
newDataSet = dataSetInput;

% Goes through each data set, replaces any -1's with previous datavalue
indexii = find(newDataSet < 0); % Identifies any 15 minute timeframes with -1
numIndexii = find(indexii); % Identifies the indexii.length, or the number of missing 15 minute sections
numIndexii = numIndexii(end); % sets the number of the indexii to only the last value (integer total)

% Checks to see if the first value is -1, and if so, changes to 0
indexiiFirst = indexii(1); % sets indexiiFirst to the index of the first -1
if indexiiFirst == 1
        newDataSet(indexiiFirst) = 0; % Sets the first value equal to 0 (as stated in sheet)
end

% Resets the indexii.length list
indexii = find(newDataSet < 0); % Identifies any 15 minute timeframes with -1
numIndexii = find(indexii);
numIndexii = numIndexii(end);
indexiiFirst = indexii(1); % sets indexiiFirst to the index of the first -1

% Creates a while loop that iterates as long as indexii.length > 0, and if
% the there is no more values left
while (numIndexii > 0) && (numel(indexii) > 0)
    newDataSet(indexiiFirst) = newDataSet(indexiiFirst - 1); % Sets first -1 value to the previous value
    indexii = find(newDataSet < 0); % Resets the indexii list of -1 values
    if numel(indexii < 0)
        indexiiFirst = indexii(1); % Resets indexiiFirst
        numIndexii = numel(indexii); % Resets the indexii.length list
    end
end % Ends the while loop, reiterates if indexii.length > 0

% Calculates hourly flow
hourlyIndex = 1:4; % Creates the number of values to sum in an hour
hourlyVector = 0; % initial value for hourly vector, otherwise it itinitializes as a matrix
numCarsLength = find(newDataSet > 0); % find the total number of data values

% Creates a while loop to iterate as long as hour's end is less
while hourlyIndex(end) <= numCarsLength(end) % iterates through the loop until the end of the index > total number
    hourlyVector(end + 1) = sum(newDataSet(hourlyIndex)); % finds the four values of that time, and sums it up
    hourlyIndex = hourlyIndex + 1; % Increments the hourly index
end
hourlyVector = hourlyVector(2:end); % Kills off the first element we used to initialize the vector

% Finds the maximum hourly flow
vMax = max(hourlyVector);

% Finds the PHF (peak hourly flow)
vMaxIndex = find(hourlyVector == vMax); % Finds the index of the hourly flow
v15 = max(newDataSet(vMaxIndex:vMaxIndex + 3)); % Finds the maximum 15 flow
peakHourlyFlow = vMax/(4*v15); % identifies the peak hourly flow (based on sheet's equation)

end
