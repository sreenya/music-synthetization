clc
clear
close all

%%

fs = 10000;

%% part - A

F = [350 440];
td = 4;

A = [0.5 0.5];
P = [0 0];

x1 = SineSum(A, F, P, td, fs);

sound(x1,fs);

%% part - B

td = 0.5;

F = [480 620];
b1 = SineSum(A, F, P, td, fs);

F = [0 0];
z1 = SineSum(A, F, P, td, fs);

x2 = [b1,z1,b1,z1,b1,z1,b1,z1];

pause(4);
sound(x2,fs);

%% part - C

td = 2;

F = [440 480];
b2 = SineSum(A, F, P, td, fs);

F = [0 0];
z2 = SineSum(A, F, P, td, fs);

x3 = [b2,z2,b2,z2,b2,z2,b2,z2];

pause(6);
sound(x3,fs);

%% part - D
%
% 
% Yes, they sound familiar
% The first one sounds like when we pick up the receiver of landline
% Second one is when people don't pick up the call
% The third one is sound of ringing/ default caller tune when we call someone in telephones
% 
% 

%% part - E

close all;

figure(1);
sgtitle("Sampled Signals - 500 Samples");

subplot(3,1,1);
plot(x1,'-k');
axis([0 500 -1  1]);
xlabel("n");
ylabel("x1[n]");

title("x1[n] vs n");
grid on;

subplot(3,1,2);
plot(x2,'-r');
axis([0 500 -1  1]);
xlabel("n");
ylabel("x2[n]");
title("x2[n] vs n");
grid on;

subplot(3,1,3);
plot(x3,'-b');
axis([0 500 -1  1]);
xlabel("n");
ylabel("x3[n]");
title("x3[n] vs n");
grid on;
















