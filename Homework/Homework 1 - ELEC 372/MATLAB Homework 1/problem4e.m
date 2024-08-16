% Run the nonlinear simulation
out_nonlinear = sim('inverted_pendulum_nonlinear');
% Run the linear simulation
out_linear = sim('inverted_pendulum_linear');

% Extract data from the SimulationOutput objects
nonlinear_data = out_nonlinear.x_nonlinear;
linear_data = out_linear.x_linear;

% Extract time and position data for both models
time_nonlinear = nonlinear_data.time;
position_nonlinear = nonlinear_data.signals.values;

time_linear = linear_data.time;
position_linear = linear_data.signals.values;

% Plot the results
figure;
plot(time_nonlinear, position_nonlinear, 'b', 'DisplayName', 'Nonlinear Model');
hold on;
plot(time_linear, position_linear, 'r--', 'DisplayName', 'Linearized Model');
xlabel('Time (seconds)');
ylabel('Cart Position x(t)');
title('Comparison of Nonlinear and Linearized Models');
legend show;
grid on;
