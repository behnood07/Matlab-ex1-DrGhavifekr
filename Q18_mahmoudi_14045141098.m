clc;
clear;

% a:
a = input('Enter a positive number : ');
x = a;
t = 0;
while true
    x_1 = (x + a / x) / 2;
    t = t + 1;
    if abs(x_1 - x) < 0.0001
        x = x_1;
        break;
    end
    x = x_1;
end
fprintf('root(%.2f) = %.6f in %d iterations.\n\n', a, x, t);

% b:

test_vals = [25, 7, 0.5];
for k = 1:length(test_vals)
    val = test_vals(k);
    x_est = val;
    cnt = 0;
    while true
        x_new = (x_est + val / x_est) / 2;
        cnt = cnt + 1;
        if abs(x_new - x_est) < 0.0001
            x_est = x_new;
            break;
        end
        x_est = x_new;
    end
    exact = sqrt(val);
    diff_val = abs(x_est - exact);
    fprintf('a = %4.1f | Iterative: %.6f | sqrt(): %.6f | Diff: %.2e | Iters: %d\n', ...
            val, x_est, exact, diff_val, cnt);
end

% c:

a = input('Enter a positive number a: ');
if a <= 0
    error('Input must be a strictly positive number (a > 0)!');
end

x = a;
t = 0;
while true
    x_1 = (x + a / x) / 2;
    t = t + 1;
    if abs(x_1 - x) < 0.0001
        x = x_1;
        break;
    end
    x = x_1;
end
fprintf(' root(%.2f) = %.6f in %d iterations.\n\n', a, x, t);