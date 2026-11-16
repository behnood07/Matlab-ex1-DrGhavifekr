clear
clc

% 15_c2k
function K = c2k(C)
    K = C + 273.15;
end

disp(c2k(10))
disp(c2k(27.5))

% 15_norm3
function m = norm3(m)
    sum = 0;
    for a = 1 : length(m)
        sum = sum + abs(m(a))^3;
    end
    m = sum^(1/3);
end

disp(norm3([3 4]))
disp(norm3([1 2 2]))

% 15_powerCalc
function [p, s] = powerCalc(v,i,pf)
    s = v * i;
    p = v * i * pf;
end

[p, s] = powerCalc(220, 5, 0.9);
fprintf(' power1 (p): %.2f W,  power2 (s): %.2f VA\n', p, s)