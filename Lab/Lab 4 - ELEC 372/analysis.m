

%Use parameters of K and T, which you got in Lab #2
K = 5.0; 
B=0.00173;
J=0.003791; %Note: use your data instead
Kp=1.0; Ki =0.0; Kd = 0.05; %PD control, initial values as 1
s = tf('s');
G = K/(s*(J*s+B)); %Motor transfer function
C = Kp + Kd*s;
y = feedback(C*G,1)
ltiview(y);