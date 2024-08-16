% Load the linearized model matrices
load('linearized_model.mat');

% Compute the transfer function
[num, den] = ss2tf(A, B, C, D);

% Display the transfer function
G = tf(num, den);
disp('Transfer function G(s):');
disp(G);
