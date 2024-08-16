% Mamadou Diao Kaba 27070179
% Homework 3 Question 1 f

% Define the transfer functions
G1 = tf(50, [1 55 250 0]); % Original third-order system
G2 = tf(1, [1 5 0]);      % Approximate second-order system

% Gain
Ka = 12.76;

% Closed-loop transfer functions
W1 = feedback(Ka*G1, 1);
W2 = feedback(Ka*G2, 1);

% Step response
figure;
step(W1, 'b', W2, 'r--');
legend('W1(s)', 'W2(s)');
title('Closed-Loop Step Response Comparison');
xlabel('Time');
ylabel('Amplitude');
grid on;

% Calculate and display overshoot
info_W1 = stepinfo(W1);
info_W2 = stepinfo(W2);

disp('Step Response Information for W1:');
disp(info_W1);

disp('Step Response Information for W2:');
disp(info_W2);

% Check if the overshoot specification is met
if info_W1.Overshoot <= 7
    disp('W1 meets the overshoot specification of <= 7%.');
else
    disp('W1 does not meet the overshoot specification of <= 7%.');
end

if info_W2.Overshoot <= 7
    disp('W2 meets the overshoot specification of <= 7%.');
else
    disp('W2 does not meet the overshoot specification of <= 7%.');
end
