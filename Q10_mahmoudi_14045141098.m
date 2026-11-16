clc
clear

syms ts

% a:

t = 0:0.01:5;
v = 3 * t.^2 + 2 * t;

dist_trapz = trapz(t, v);
disp(dist_trapz)

% b:

v_sym = 3 * ts^2 + 2 * ts;

s_sym = int(v_sym, ts);
dist_exact = int(v_sym, ts, 0, 5);

fprintf('s_sym = %s\n', char(s_sym))
fprintf('dist_exact = %f\n', double(dist_exact))

% c:

a = 0:0.5:5;
v2 = 3 * a.^2 + 2 * a;

dist_coarse = trapz(a, v2);

err = abs(dist_coarse - double(dist_exact));

fprintf('dist_coarse = %f\n', dist_coarse)
fprintf('Absolute Error = %f\n', err)

% d:

cum_dist = cumtrapz(t, v);

idx_half = find(cum_dist >= double(dist_exact) / 2, 1);

fprintf('Time to pass half distance = %f s\n', t(idx_half))