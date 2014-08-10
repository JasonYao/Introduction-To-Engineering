function [deltayMax] = maxVertDistance(voy, yNought, yFinal)
%maxVertDistance Calculates the maximum vertical distance
%   Detailed explanation goes here

% Sets the format to long to see the vectors
format long

% Solves for the time of flight
timeOfFlightElement = timeOfFlight(yNought, yFinal, voy);

% Turns voy into a vector in s/100
t = [0:0.01:timeOfFlightElement]';

deltay = 0;

% Calculates the displacement in the y-axis over time
for (i = 1:length(t))
    deltay(end + 1) = (voy)*t(i) -4.9*((t(i))^2);
end

deltay = deltay(2:end);

% Proof by plotting
%figure(1)
%plot(t/100, deltay)
%title('Awesome graph showing projetile motion');
%xlabel('time (seconds)');
%ylabel('Verticle Displacement (metres)');

% Calculates the maximum displacement over time
deltayMax = max(deltay);
 
end

