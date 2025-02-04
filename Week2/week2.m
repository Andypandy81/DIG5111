%Task 1
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

%task 2
%1)
%to get the file size you use all the file data? then time the durarion
%by the samplefrequency and the bit depth then divide by 8 ti get to the
%size of a bit? (ask sam for clarificaiton)
info1 = Duration*44100*16/8
disp(Filename)

%2)
info1 = audioinfo("piano_middle_C.wav");
audioinfo(Filename);

%3) Create code to input the full signal calle

t1 = 0.5;
t2 = 1;
%sample indicies
t1samples = t1*Fs;
t2samples = t2*Fs;
partSig = sig(t1samples:t2samples);
partTime = Time(t1samples:t2samples)
plot(partTime ,partSig)
audioread("piano_middle_C.wav")

%4)
sig_croped = sig(Fs*0.5:sig*1);
plot(sig_croped)



