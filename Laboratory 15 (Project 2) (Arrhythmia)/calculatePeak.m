% By Team TOO SCHOOL FOR COOL
% By Jason "J MOney" Yao, Antonia "xXTondizzleXx" Molina & Nick "N Dawg" Huey

function [peaks, location] = calculatePeak(vectorX)
%calculatePeak Calculates the peak of a vector, and returns the peak & ind
%   Utilizes two findPeak filters in order to find just the three main
%   peaks for all ECG signals passed through it
[peaks1, location1] = findpeaks(vectorX, 'MINPEAKHEIGHT', .5); % Filters everything by a minimum height of 1mV
[peaks2, location2] = findpeaks(vectorX, 'MINPEAKDISTANCE', 100); % Filters everything by a minimum peak distance of 100

% Finds the intersection to identify the peaks
[location, locationIndex1, locationIndex2] = intersect(location1, location2); % Finds the intersection of the two locations

% Identifies the peaks
peaks = peaks1(locationIndex1);

end

