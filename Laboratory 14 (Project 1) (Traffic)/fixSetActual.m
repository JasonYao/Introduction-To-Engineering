function [fixedDataSet] = fixSetActual(dataSet)
%fixes the dataset that is parsed by repairing any -1's with the
%previous value

% Copies the dataset to make alterations
newDataSet = dataSet;

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

fixedDataSet = newDataSet; %returns the new dataset
end

