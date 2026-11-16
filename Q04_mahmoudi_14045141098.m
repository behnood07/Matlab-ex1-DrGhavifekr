clear
clc

v = [22.5 22.8 23.1 24.0 25.2 26.1 26.0 25.4 24.3 23.2];

mean_v = mean(v);
max_v = max(v);
min_v = min(v);
std_v = std(v);

fprintf('min a = %.2f \n',min_v)
fprintf('max a = %.2f \n',max_v)
fprintf('mean a = %.2f \n',mean_v)
fprintf('std a = %.2f \n',std_v)

dev_v = (v - mean_v);
disp('Deviation from mean: ')
disp(dev_v)

sort_v = sort(v);
disp(sort_v(3))