% By Team Awesome

% Sets the format to long to see the vectors
format long

% Initializes the variables for easy changing of data
vo = 60.96; % m/s
thetaMax = pi/2; % radians
yNought = 0; % m
yFinal = 0; % m
a = 9.8; % m/(s^2)

% Creates a theta vector incrementing by 0.1 to be independent axis
thetaVector = 0:0.01:thetaMax;

% Initialize some stuff
deltayMax = 0;
deltaxMax = 0;

% Loop through and gather a vector of the maximum heights
for i = 1:(length(thetaVector))
    % vo varies in time as well, that's why our numbers are messed up.
    % Make vo a vector that varies in time and we're good
    vfy = sqrt(((vo*sin(thetaVector(i)))^2) + 2*a*(yFinal-yNought));

    % Creates a vector with the maximum verticle distances
    deltayMax(end + 1) = maxVertDistance(vfy, yNought, yFinal);
    
    
    % The time of flight vector that changes
    timeOfFlightVector = timeOfFlight(yNought, yFinal, (vo*sin(thetaVector(i))));
    
    % Creates a vector with the maximum horizontal distances
    deltaxMax(end + 1) = maxHorizontalDistance(timeOfFlightVector, (vo*cos(thetaVector(i))));
end

% Gets rid of the initialization variable
deltayMax = deltayMax(2:end);
deltaxMax = deltaxMax(2:end);

% Adds a multiplier since it's wrong by a factor of 100
deltayMaxFinal = deltayMax/10.; % HULK SMASH Y U NO WORK

% Like all good code, I made it work without knowing how it works.
% Proof by plotting the maximum vertical distances
figure(1)
plot(thetaVector, deltayMax)
title('Awesome graph showing maximum heights reached based on theta');
xlabel('Degrees (radians)');
ylabel('Verticle Displacement (metres)');
% Shows maximum vertical distance is when theta = pi/2

% Plots the maximum horizontal distances
figure(2)
plot(thetaVector, deltaxMax)
title('Awesome graph showing maximum horizontal distances reached based on theta');
xlabel('Degrees (radians)');
ylabel('Horizontal Displacement (metres)');
% Shows maximum horizontal distance is when theta = pi/4

% Exercise 2
% Note: why are we using a unit of torque in place of a spring constant?
% they have different units (N*m versus N/m)

% Exercise 2 variables

% Imperial scum:
massScum = 0.5; % lb (mass)
springConstantScum = 10; % lb/ft <-- why does this unit even exist :(
vertDisplacementScum = 3; % ft
theta = pi/4; % radians
diagonalDistanceScum = 6; % ft

% Using imperial scum units to go through the calculations
voScum = sqrt(((springConstantScum*(diagonalDistanceScum^2))/(massScum)) - (2*32.2*vertDisplacementScum));

% Converts from the imperial scum to the glorious metric
voMetric = 0.3048*voScum; % m/s

% Break vo into components
voExercise2X = voMetric*cos(theta);
voExercise2Y = voMetric*sin(theta);

% Calculates maximum horizontal distance traveled
timeOfFlightVar = timeOfFlight(yNought, yFinal, voExercise2Y);
maxHorizontalDisplacement = maxHorizontalDistance(timeOfFlightVar, voExercise2X);

% Calculates maximum vertical distance traveled
maxVerticalDisplacement = maxVertDistance(voExercise2Y, yNought, yFinal);

% Displays the information
disp('The total horizontal displacement covered is: ');disp(maxHorizontalDisplacement)
disp('The total vertical displacement covered is: ');disp(maxVerticalDisplacement)

% Plots stuff
% Initialize some stuff
%velocityVectorScum = 0;
%velocityVectorScumX =0;
%velocityVectorScumY =0;

% Loop through and gather a vector of the maximum initial velocities
%for j = 1:(length(thetaVector))
%    diagonalDistanceScum2 = (sin(thetaVector(j))/vertDisplacementScum);
%    velocityVectorScum(end + 1) = sqrt(((springConstantScum*(diagonalDistanceScum2^2))/(massScum)) - (2*32.2*vertDisplacementScum));   
    
    % Break vo into components
%    velocityVectorScumX(end + 1) = velocityVectorScum(i)*cos(thetaVector(i));
%    velocityVectorScumY(end + 1) = velocityVectorScum(i)*sin(thetaVector(i));
%end

% Gets rid of the initialization variable
%velocityVectorScum = velocityVectorScum(2:end);
%velocityVectorScumX = velocityVectorScumX(2:end);
%velocityVectorScumY = velocityVectorScumY(e:end);

% Converts it to metric
%velocityVectorMetric = velocityVectorScum*0.3048;
%velocityVectorMetricX = velocityVectorScumX*0.3048;
%velocityVectorMetricY = velocityVectorScumY*0.3048;


% Calculates maximum horizontal distance traveled
%timeOfFlightVector= timeOfFlight(yNought, yFinal, velocityVectorMetricY);
%maxHorizontalDisplacementVector = maxHorizontalDistance(timeOfFlightVector, velocityVectorMetricX)

% Calculates maximum vertical distance traveled
%maxVerticalDisplacementVector = maxVertDistance(velocityVectorMetricY, yNought, yFinal)


% The plot
%figure(3)
%plot(thetaVector, initVelocityVector);
%title('Awesome graph showing initial velocity based on theta');
%xlabel('Degrees (radians)');
%ylabel('Initial Velocity (m/s)');


