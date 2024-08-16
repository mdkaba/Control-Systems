% Mamadou Diao Kaba 27070179
% Homework 2 Question 3 a and b

% a)

% Define the transfer functions
G1 = tf([16], [1 3 16]);
G2 = tf([0.04], [1 0.02 0.04]);
G3 = tf([1.05e7], [1 1.6e3 1.05e7]);

% Function to compute parameters for a second-order system
function [damping_ratio, wn, Ts, Tp, Tr, OS] = compute_params(G)
    % Get natural frequency and damping ratio
    [wn, zeta] = damp(G);
    wn = wn(1); % natural frequency
    zeta = zeta(1); % damping ratio
    
    % Settling time (98%)
    Ts = 4 / (zeta * wn);
    
    % Peak time
    Tp = pi / (wn * sqrt(1 - zeta^2));
    
    % Rise time (approximately)
    Tr = (1.8 * pi) / (wn * sqrt(1 - zeta^2));
    
    % Percent overshoot
    OS = exp(-zeta * pi / sqrt(1 - zeta^2)) * 100;
    
    % Return results
    damping_ratio = zeta;
    wn = wn;
end

% Compute parameters for each transfer function
[damping_ratio1, wn1, Ts1, Tp1, Tr1, OS1] = compute_params(G1);
[damping_ratio2, wn2, Ts2, Tp2, Tr2, OS2] = compute_params(G2);
[damping_ratio3, wn3, Ts3, Tp3, Tr3, OS3] = compute_params(G3);

% Display results
disp('System G1:');
fprintf('Damping Ratio: %.4f\nNatural Frequency: %.4f\nSettling Time: %.4f\nPeak Time: %.4f\nRise Time: %.4f\nOvershoot: %.4f%%\n\n', ...
    damping_ratio1, wn1, Ts1, Tp1, Tr1, OS1);

disp('System G2:');
fprintf('Damping Ratio: %.4f\nNatural Frequency: %.4f\nSettling Time: %.4f\nPeak Time: %.4f\nRise Time: %.4f\nOvershoot: %.4f%%\n\n', ...
    damping_ratio2, wn2, Ts2, Tp2, Tr2, OS2);

disp('System G3:');
fprintf('Damping Ratio: %.4f\nNatural Frequency: %.4f\nSettling Time: %.4f\nPeak Time: %.4f\nRise Time: %.4f\nOvershoot: %.4f%%\n\n', ...
    damping_ratio3, wn3, Ts3, Tp3, Tr3, OS3);

% b)

ltiview(G1);
ltiview(G2);
ltiview(G3);