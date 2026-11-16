clc;
clear;

% a:
for a = 3:2:34
    fprintf('%d\n',a);
end

a = 3;
while a <= 34
    fprintf('%d\n',a);
    a = a + 2;
end

% b:
x = input('Enter x: ');
n = input('Enter n: ');

b = 0;
for i = 1:n
    b = b + (2/x)^i;
end

fprintf('serie of y is = %.5f\n',b); % x = 2, n = 10 -> y = 10.0000

% c:
t = 0;
target = 500;
step = 0;

while abs(target - t) >= 5
    t = t + 0.1 * (500-t);
    step = step +1 ;
end

fprintf('speed at the end = %.2f\n',t);
fprintf('Total number of steps = %d\n',step);