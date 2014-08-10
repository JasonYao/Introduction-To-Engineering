function [fixedDataSet] = fixSet(dataSet)
%fixes the dataset that is parsed by repairing any -1's with the
%previous value

% Copies the dataset to make alterations
newDataSet = dataSet;

%   Goes through each data set, replaces any -1's with previous datavalue
indexii = find(newDataSet < 0); % Identifies any 15 minute timeframes with -1
numIndexii = find(indexii); % Identifies the indexii.length

while (numIndexii > 0) % Creates a while loop that iterates as long as indexii.length > 0
    newDataSet(indexii) = newDataSet(indexii - 1); % Sets any -1 values to the previous value
    indexii = find(newDataSet < 0); % Resets the indexii list of -1 values
    numIndexii = find(indexii); % Resets the indexii.length list
end % ends the while loop, reiterates if indexii.length > 0

fixedDataSet = newDataSet; %returns the new dataset
end

