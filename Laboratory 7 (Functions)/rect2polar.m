function [a, m] = rect2polar(x,y)
% function [a, m] = rect2polar(x,y)
% Converts the real and imaginary parts of
% a complex number to the magnitude and angle
% x - real part (input)
% y - imaginary part (input)
% a - angle in radians (output)
% m - magnitude (output)
z = x + j*y; % convert to a complex number
a = angle(z); % calculate angle in radians
m = abs(z); % calculate magnitude

