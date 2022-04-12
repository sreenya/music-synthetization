function y = my_synthesizer(A,F_notes,P,adsr,td_notes,fs)
% Initialize output as empty
y = [];
s = adsr(3);
% Loop over the notes
for ii = 1:length(F_notes)
 % scale a,d,sd,r so that they sum to required note duration
 a = adsr(1)*td_notes(ii);
 d = adsr(2)*td_notes(ii);
 sd = adsr(4)*td_notes(ii);
 r = adsr(5)*td_notes(ii);
 % Compute the time vector and ADSR envelope for this note
 [t,env] = envelope(a,d,s,sd,r,fs);
 % Compute the sum of harmonics for this note
 xt = harmonics(A,F_notes(ii), P, td_notes(ii), fs);
 % Modulate the sum of harmonics with the envelope
 env1 = env;
 if length(xt)>length(env)
 env1 = zeros(1,length(xt));
 for ind = 1:length(env)
     env1(ind) = env(ind);
 end
 end
 xte = xt.*env1;
 % Add the note to the sequence
 y = [y,xte];
end
end
