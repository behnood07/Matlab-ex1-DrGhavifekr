clear
clc

a = 10 * rand(4);
disp('Matrix a: ')
disp(a)

max_a = max(a(:));
min_a = min(a(:));

[b_max, c_max] = find(a == max_a , 1);
[r_min, c_min] = find(a == min_a , 1);

a(b_max, c_max) = min_a;
a(r_min, c_min) = max_a;
disp('a after swapping: ')
disp(a)


mean = mean(a);
disp(mean)