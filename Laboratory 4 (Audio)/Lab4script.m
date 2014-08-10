% Excercise 1
[y,fs] = wavread('speech1.wav');
yr = y(end:-1:1);
sound(yr, fs)

%Sinusoid File
fs = 1000; % sampling frequency (Hz)
Ts = 1/fs;  % sampling interval (s)
t = 0:Ts:0.5; % sample every Ts seconds for 2 seconds
x = 0.4*cos(2*pi*500*t + (2*pi)/2); % generate sinusoid
plot (t,x)  % plots sinusoid
sound(x,fs) % outputs audio w/o scaling
% e- Changing fs much lower = not as "solid" sound
% f- Changing the amplitude lower = quieter sound
% g- Changing the phase shift does not change the function

% 5- Synthesizing Music
% A5 frequency = 880 Hz, or double
% A6 frequency = 1760 Hz, or double






%plot(y)

%x = 10:10:100;
%xcopy = x(1:end);
%xreverse = x(end:-1:1);
