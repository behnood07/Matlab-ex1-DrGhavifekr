clear
clc

% a:
t = [0, 1, 2, 5, 10];

V_capac = 12 * (1 - exp(-t / 2));
fprintf('t = %2d s -> V_capac = %.4f V\n', [t, V_capac])

% b:

t_95 = -2*log(0.05);
fprintf('time to rich 95%% : %.3f s\n', t_95)

% c:

V_capac2 = 12*exp(-t/2);
disp(V_capac2(5))