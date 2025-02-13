%1)
NoteC=note(0.7, 40, 2);
NoteE=note(0.5, 44, 2);
NoteG=note(0.5, 47, 2);
 
Ctriad_org = NoteC+NoteE+NoteG;
Ctriad = Ctriad_org./max(Ctriad_org);
%sound(Ctriad,11025); 
audiowrite('Ctriad.wav', Ctriad,11025); %is audio clipping why? 

% abc ablolute value ? i think
abs(Ctriad)

audioinfo('Ctriad.wav')