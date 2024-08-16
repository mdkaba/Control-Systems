% Mamadou Diao Kaba 27070179
% Homework 3 Question 2 d

% Plot the responses for K = 1, K = 5, and K = 30
figure;
hold on;

% Plot for K = 1
plot(y1.time, y1.signals.values, 'b', 'DisplayName', 'K=1');


% Plot for K = 5
plot(y5.time, y5.signals.values, 'r', 'DisplayName', 'K=5');

% Plot for K = 30
plot(y30.time, y30.signals.values, 'g', 'DisplayName', 'K=30');

xlabel('Time (s)');
ylabel('Output y(t)');
title('Closed-Loop System Response for Different K Values');
legend show;
grid on;
hold off;
