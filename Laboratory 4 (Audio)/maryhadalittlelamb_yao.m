fs = 44100; % sampling frequency (in Hz)
Ts = 1/fs; % sampling interval (in seconds)
t = 0:Ts:1; % sample every Ts seconds for 1 second
E = 0.5*cos(2*pi*659.255*t); % generate note E
D = 0.5*cos(2*pi*293.665*t);% generate note D
C= 0.5*cos(2*pi*261.626*t); % generate note C
s = zeros(1,fs*0.1); % generate 0.1 second silence
y = [E,D,C,D,s,E,E,E,s,D,D,D,s,E,E,E,s,E,D,C,D,E,E,E,C,D,D,E,D,C]; % concatenate notes
soundsc(y, fs)% send to speakers(with autoscaling)


