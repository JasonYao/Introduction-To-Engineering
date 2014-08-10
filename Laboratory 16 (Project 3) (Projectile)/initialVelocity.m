function [initVelocity] = initialVelocity(theta, springConstant, mass, vertDisplacement)
%UNTITLED3 Calculates the initial velocity
%   Detailed explanation goes here
diagonalDistance = dOfTheta(vertDisplacement, theta);

initVelocity = sqrt(((springConstant*(diagonalDistance^2))/(mass)) - (2*9.8*vertDisplacement));

end

