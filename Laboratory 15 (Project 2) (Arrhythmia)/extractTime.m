% By Team TOO SCHOOL FOR COOL
% By Jason "J MOney" Yao, Antonia "xXTondizzleXx" Molina & Nick "N Dawg" Huey

function [locationSet1, locationSet2, locationSet3] = extractTime(location)
%extractTime Extracts the 80ms time interval before each peak
%   Separates the time before each 
location1 = location(1);
location2 = location(2);
location3 = location(3);

locationSet1 = [(location1 - 10):(location1 - 1)]';
locationSet2 = [(location2 - 10):(location2 - 1)]';
locationSet3 = [(location3 - 10):(location3 - 1)]';
end

