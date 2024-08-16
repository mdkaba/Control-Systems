% Mamadou Diao Kaba 27070179
% Homework 4 Question 1

% Define the transfer function G(s)
numerator = [1 2];
denominator = conv(conv([1 1], [1 4]), conv([1 5], [1 9]));
G = tf(numerator, denominator);

% Open the Root Locus Design tool
rltool(G)
