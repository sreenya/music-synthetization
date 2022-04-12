function xn = SineSum(A, F, P, td, fs)

t = 0:1/fs:td;

xn = zeros(1, length(t));

for idx = 1:length(A)
    xn = xn + A(idx)*sin(2*pi*F(idx)*t + P(idx));
end

end
