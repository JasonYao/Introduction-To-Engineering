% By Team TOO SCHOOL FOR COOL
% By Jason "J MOney" Yao, Antonia "xXTondizzleXx" Molina & Nick "N Dawg" Huey

function [onsetTime, set1, set2, set3, averageSet, peaks, location, locationSet1, locationSet2, locationSet3] = calculateOnset(vectorX)
%calculateOnset Calculates the onset time of a signal
%   Calculates the onset time of a signal

% Calculates the points and the time value of each peak
[peaks, location] = calculatePeak(vectorX);

% Extracts the first 80 ms before each peak (10 datapoints)
[locationSet1, locationSet2, locationSet3] = extractTime(location);

% Finds the derivative points of each 8ms before each peak
set1 = gradient(vectorX(locationSet1));
set2 = gradient(vectorX(locationSet2));
set3 = gradient(vectorX(locationSet3));
averageSet = mean([set1 set2 set3], 2); % Calculates the average

% Identifies the first peak of the average derivative points
%[p1, preOnSetTime] = findpeaks(averageSet,'SORTSTR', 'ascend')
%preOnSetTime = preOnSetTime(1);
[p1, preOnSetTime] = findpeaks(averageSet,'NPEAKS', 1);

time = [-80:8:-8]'; % Creates a time value to act as the x-value on the graph

onsetTime = time(preOnSetTime);
end

