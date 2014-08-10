% By Jason Yao

%Exercise 1
% Creates a low-pass filter
fs = 44100; % Sampling frequency (Hz)
b= fir1(300, 1000/(fs/2)); % designs the lowpass filter

% Generates a 1500 Hz cosine
Ts = 1/fs; % sampling interval (in seconds)
t = 0:Ts:2; % sample every Ts seconds for 2 seconds
x = cos(2*pi*1500*t); % generate a 1500 Hz cosine
y = filter(b,1,x); % filter the 1500 Hz cosine
plot(t,x,t,y) % plot the input and output signals
legend('x[n]- Input','y[n]-Output') % Adds a legend to the plot

% Calculates the gain from the Peak Output Value over Peak Input Value
peakOutputValue = max(y);
peakInputValue = max(x);

gain = peakOutputValue/peakInputValue;

sound(x,fs)
sound(y,fs)

% Note: Gain measured at 500 Hz: 0.9979
% Note: Gain measured at 1500 Hz: 0.0968, therefore filter does not pass
% 1500 Hz cosine
