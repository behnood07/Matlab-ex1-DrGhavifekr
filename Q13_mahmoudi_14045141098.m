clc;
clear;

syms s t

% a:
Is = 12/(s*(4+0.2*s));

% b:
i = ilaplace(Is,s,t);
disp(i);

% c:
i_01 = double(subs(i,t,0.1));
i_1 = double(subs(i,t,1));

fprintf('i(t) in t = 0.5 s: %.4f A\n',i_01);
fprintf('i(t) in t = 1 s: %.4f A\n',i_1);

% d:
I_steady = double(limit(i,t,inf));
I_ohm = 12 / 4;

fprintf('Steady-state current (limit): %.4f A\n',I_steady);
fprintf('V/R = %.4f A\n',I_ohm);