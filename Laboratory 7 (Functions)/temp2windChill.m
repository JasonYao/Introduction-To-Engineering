function w = temp2windChill(t,v)
%function wc = temp2windChill(t,v)
%Computes the windchill in (°F)
% t - air temperature (in °F)(input)
% w - wind chill (in °F)(output)
% v - wind speed (mi/hr)(input)
% Test 20 °F with 35 mph wind.
w = 35.74 + 0.6215*t - 35.75*(v^0.16)+(0.4275*t)*(v^0.16);