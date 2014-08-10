function [timeOfFlightFinal] = timeOfFlight(yNought, yFinal, vy)
%timeOfFlight Calculates the time of flight given inputs
%   Detailed explanation goes here

% Calculates the time of flight
deltay = -(yFinal - yNought);
p = [deltay vy -4.9];

% Busting out quadratic formula because roots is being an ass
if deltay ~= 0
    timeOfFlightFinal1 = (-vy + sqrt((vy^2) - (4*deltay*-4.9)))/(2*deltay);
    timeOfFlightFinal2 = (-vy - sqrt((vy^2) - (4*deltay*-4.9)))/(2*deltay);
else
    timeOfFlightFinal1 = 0;
    timeOfFlightFinal2 = vy/4.9;
end

% Checks for negative time and kills it off
if timeOfFlightFinal1 <= 0
    timeOfFlightFinal = timeOfFlightFinal2;
else if timeOfFlightFinal2 <= 0
    timeOfFlightFinal = timeOfFlightFinal1;
else
timeOfFlightFinal = [timeOfFlightFinal1 timeOfFlightFinal2];
    end
end


