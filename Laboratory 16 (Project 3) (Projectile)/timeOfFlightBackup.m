function [timeOfFlightFinal] = timeOfFlight(yNought, yFinal, vNought, theta)
%timeOfFlight Calculates the time of flight given inputs
%   Detailed explanation goes here

% Calculates the Vy
vy = vNought * sin(theta);

% Calculates the time of flight
deltay = -(yFinal - yNought);
p = [deltay vy -4.9];

c = [4.9 -vy deltay];
timeOfFlightFinal = roots(c);
end


