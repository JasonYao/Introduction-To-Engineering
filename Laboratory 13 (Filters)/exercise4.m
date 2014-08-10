% By Jason Yao

% Exercise 4
% Makes a filter to block the sound of bird chirps
% Imports wav files
[x,fs] = wavread('birds_jet_noise.wav');

% Adds a 180th order highpass filter with a cutoff freqency of 1.8k Hz
b = fir1(180,1800/(fs/2),'low');
[H, f] = freqz(b,1,2^16,fs);
plot(f,abs(H));
xlabel('Frequency');
ylabel('Gain');

% Passes the signal through the high-pass filter
y = filter(b,1,x);
soundsc(y,fs)