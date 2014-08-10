% By Jason Yao

% Exercise 3
% Makes a filter to block the sound of an engine
% Imports wav files
[x,fs] = wavread('birds_jet_noise.wav');
%soundsc(x,fs)

% Adds a  300th order highpass filter with a cutoff freqency of 3k Hz
b = fir1(180,1800/(fs/2),'high');
[H, f] = freqz(b,1,2^16,fs);
plot(f,abs(H));
xlabel('Frequency');
ylabel('Gain');

% Passes the signal through the high-pass filter
y = filter(b,1,x);
soundsc(y,fs)