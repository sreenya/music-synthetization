clc
clear
close all

%% 

fs = 10000;
td = 1;

N = 5;
f0 = 50;

A = zeros(1, N);
P = zeros(1, N);

for ind=1:N
    A(ind) = (ind);
end

xn = harmonics(A, f0, P, td, fs);

a = 0.2;
d = 0.2;
s = 0.7;
sd = 0.4;
r = 0.2;
[t_env1,env1] = envelope(a,d,s,sd,r,fs);

soundsc(xn, fs);
%pause(1);
soundsc(xn.*env1, fs);

figure(2);

sgtitle("ADSR Graphs");

subplot(3,1,1);
plot(xn);
axis([0 10000 -15 15]);
xlabel("n");
ylabel("xn");
title("xn vs n");

subplot(3,1,2);
plot(env1,'-k');
axis([0 10000 0 1]);
xlabel("n");
ylabel("env");
title("sampled envelope");

subplot(3,1,3);
plot(xn.*env1,'-r');
axis([0 10000 -15 15]);
xlabel("n");
ylabel("xn.*env1");
title("Synthesized sound");


