syms s t
G = 1.6667 * (s + 0.1) / ((s - 6.388) * (s + 6.398) * (s + 0.04));
U = 1 / s; % Laplace transform of unit step input
Y = G * U;
y_t = ilaplace(Y, s, t);
disp('Inverse Laplace transform y(t):');
disp(vpa(y_t, 8));

num = [1.6667, 0.16667];
den = conv([1, -6.388], conv([1, 6.398], [1, 0.04]));
sys = tf(num, den);

figure;
step(sys);
title('Step Response of the System');
xlabel('Time');
ylabel('Response y(t)');
