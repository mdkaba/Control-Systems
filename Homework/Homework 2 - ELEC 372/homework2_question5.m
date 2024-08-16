% Mamadou Diao Kaba 27070179
% Homework 2 Question 5 a and c

% a)

% Define the transfer function
numerator = [1];
denominator = [5 1 10];
G = tf(numerator, denominator);

% Display the transfer function
disp(G);

% c)

% Compute the poles
poles = pole(G);

% Compute the damping ratio and natural frequency
[zeta, wn] = damp(G);
wn = wn(1); % natural frequency
zeta = zeta(1); % damping ratio

% Compute step response information
info = stepinfo(G);

% Display the results
fprintf('Poles of the transfer function:\n');
disp(poles);
fprintf('Damping Ratio: %.4f\n', zeta);
fprintf('Natural Frequency: %.4f\n', wn);
fprintf('Percent Overshoot: %.4f%%\n', info.Overshoot);
fprintf('Settling Time (Ts): %.4f sec\n', info.SettlingTime);
fprintf('Peak Time (Tp): %.4f sec\n', info.PeakTime);
fprintf('Rise Time (Tr): %.4f sec\n', info.RiseTime);

% Plot the step response
ltiview(G);
