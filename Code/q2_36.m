clc
clear 
close all

%%
fs = 10000;
td = 1;

%% part - 1

N = 5;
f0 = 50;

A = zeros(1, N);
P = zeros(1, N);
for ind=1:N
    A(ind) = 1/ind;
end

x1 = harmonics(A, f0, P, td, fs);

soundsc(x1,fs);
%pause(1);
%sound(x1,fs);

%% part - 2

for ind=1:N
    A(ind) = 1/(ind*ind);
end

x2 = harmonics(A, f0, P, td, fs);

pause(1);
soundsc(x2,fs);

%% part - 3

% N=10 and f0 = 100
N = 10;
f0 = 100;

A = zeros(1, N);
P = zeros(1, N);
for ind=1:N
    A(ind) = 1/ind;
end

x3 = harmonics(A, f0, P, td, fs);
% f0 = 150
f0 = 150;
x4 = harmonics(A, f0, P, td, fs);
% f0 = 200
f0 = 200;
x5 = harmonics(A, f0, P, td, fs);

pause(1);
soundsc(x3,fs);
pause(1);
soundsc(x4,fs);
pause(1);
soundsc(x5,fs);

% N=15 and f0 = 100
N = 15;
f0 = 100;

A = zeros(1, N);
P = zeros(1, N);
for ind=1:N
    A(ind) = 1/(ind*ind);
end

x6 = harmonics(A, f0, P, td, fs);
% f0 = 150
f0 = 150;
x7 = harmonics(A, f0, P, td, fs);
% f0 = 200
f0 = 200;
x8 = harmonics(A, f0, P, td, fs);

pause(1);
soundsc(x6,fs);
pause(1);
soundsc(x7,fs);
pause(1);
soundsc(x8,fs);

%% part - 4

N = 5;
f0 = 50;

A = zeros(1, N);
P = zeros(1, N);

% ak = sin(pi*k/N)
for ind=1:N
    A(ind) = sin(pi*ind/N);
end

x9 = harmonics(A, f0, P, td, fs);

% ak = cos(pi*k/N)
for ind=1:N
    A(ind) = cos(pi*ind/N);
end

x10 = harmonics(A, f0, P, td, fs);

% ak = k
for ind=1:N
    A(ind) = ind;
end

x11 = harmonics(A, f0, P, td, fs);

pause(1);
soundsc(x9,fs);
pause(1);
soundsc(x10,fs);
pause(1);
soundsc(x11,fs);

%% part - 5

figure(1);
sgtitle("Plots with N = 5 and f_0 = 50");

subplot(5,1,1);
plot(x1);
axis([0 500 -2 2]);
xlabel("n");
ylabel("x[n]");
title("ak = 1/k");

subplot(5,1,2);
plot(x2, '-r');
axis([0 500 -2 2]);
xlabel("n");
ylabel("x[n]");
title("ak = 1/k^2");

subplot(5,1,3);
plot(x9, '-g');
axis([0 500 -3 3]);
xlabel("n");
ylabel("x[n]");
title("ak = sin(pi*k/N)");

subplot(5,1,4);
plot(x10, '-m');
axis([0 500 -3 3]);
xlabel("n");
ylabel("x[n]");
title("ak = cos(pi*k/N)");

subplot(5,1,5);
plot(x11, '-k');
axis([0 500 -15 15]);
xlabel("n");
ylabel("x[n]");
title("ak = k");















































