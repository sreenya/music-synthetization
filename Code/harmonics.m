function xn = harmonics(A, f0, P, td, fs)

F = zeros(1, length(A));
k = 1:1:length(A);
F = k*f0;

xn = SineSum(A, F, P, td, fs);


end