clear
clc

% a:

syms ts;
t = 0:dt:20;
s = 60*(1-exp(-t/5));

disp(length(diff(s)/0.5))
disp(length(gradient(s,0.5)))

% b:

s_sym = 60 * (1-exp(-ts/5));
v_sym = diff(s_sym,ts);
vt = subs(v_sym,ts,5);
vt_num = double(vt);
disp(vt_num)

% c:

v_max = max(gradient(s,t));
fprintf('vmax = %.2f\n',v_max)

a = diff(v_sym,ts);
disp(subs(v_sym,ts,10))
disp(subs(a,ts,10))