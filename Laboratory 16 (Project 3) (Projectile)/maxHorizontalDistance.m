function [totalHorDistance] = maxHorizontalDistance(timeOfFlight, vx)
%maxHorizontalDistance Calculates a projectile's max horizontal motion
%   Detailed explanation goes here

% Calculates for vx
%vx = vNought * cos(theta);

% Calculates the max horizontal distance
totalHorDistance = timeOfFlight * vx;

end

