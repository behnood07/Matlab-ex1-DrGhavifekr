clear
clc

% a:

P = [-5 40 0];
t = [0 2 4 6];
fprintf('h = %.2f\n',polyval(P,t))

% b:

b = roots(P);
disp('times on grounf(roots): ')
disp(b)

% c:

P1 = [5 0];
P2= [-1 8];
p_conv = conv(P1, P2);
disp(p_conv)

max = -P(2) / (2 * P(1));
disp(polyval(P,max))