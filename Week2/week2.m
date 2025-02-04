
%audio filename must in same directory of this m file
Filename = 'piano_middle_C.wav';
%Fist read wav file into memory 
[sig, Fs]=audioread(Filename);

Duration = length(sig)/Fs;
disp(Duration);
Ts = 1/Fs;
Time = 0:Ts:Duration-Ts;
plot(Time,sig);
ylabel('Amplitude');
xlabel('Time Sec');

audioinfo ("piano_middle_C.wav")