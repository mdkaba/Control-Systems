% Mamadou Diao Kaba 27070179
% Homework 3 Question 2 e

figure;
hold on;

% Plot the response for K = 30 with ramp input
plot(y_ramp.time, y_ramp.signals.values, 'g', 'DisplayName', 'K=30, Ramp Input');

xlabel('Time (s)');
ylabel('Output y(t)');
title('Closed-Loop System Response for K=30 with Ramp Input');
legend show;
grid on;
hold off;
