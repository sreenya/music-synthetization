clc
clear
close all

%% 

N = 5;
A = zeros(1,N);
for ind = 1:N
    A(ind) = 1/(ind*ind);
end

fs = 10000;

%% part - a

F_notes = 50:5:100;
td_notes = ones(size(F_notes));
P = zeros(1,N);

adsr = [0.2 0.2 0.7 0.4 0.2];

y1 = my_synthesizer(A,F_notes,P,adsr,td_notes,fs);

soundsc(y1,fs);

%% part - b

F_notes = 100:-10:40;

y2 = my_synthesizer(A,F_notes,P,adsr,td_notes,fs);

pause(9);
soundsc(y2,fs);

%% part - c

M = 5;

F_notes = 50 + 50.*rand(1,M);
td_notes = 0.5 + rand(1,M);

y3 = my_synthesizer(A,F_notes,P,adsr,td_notes,fs);

pause(10);
soundsc(y3,fs);

%% part - d

N = 20;
A = zeros(1,N);
P = zeros(1,N);
for ind = 1:N
    A(ind) = ind*sin(2*pi*ind/N);
end

F_notes = [286 1988 782 1192 2756];
td_notes = ones(size(F_notes));

y4 = my_synthesizer(A,F_notes,P,adsr,td_notes,fs);

pause(5);
soundsc(y4,fs);


%% part - e


audiowrite('q4_36.wav', y3, fs,"Title",'sorry, it is 6 seconds :(');










