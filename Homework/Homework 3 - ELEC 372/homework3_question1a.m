% Define the transfer functions
G1 = tf(50, [1 55 250 0]); % Original third-order system
G2 = tf(1, [1 5 0]);      % Approximate second-order system

% Plot step responses
figure;
step(G1, 'b', G2, 'r--');
legend('G1(s)', 'G2(s)');
title('Step Response Comparison');
xlabel('Time ');
ylabel('Amplitude');
grid on;
