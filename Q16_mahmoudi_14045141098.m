clc;
clear;

% a:
t1 = 0:0.1:5;
y1 = sin(t1) .* cos(t1) .^2 ./(t1 .^ 2+1);
y2 = sqrt(t1 .^ 3) .* exp(2);

figure(1);
plot(t1, y1, 'b-','LineWidth', 2);
hold on;
plot(t1, y2, 'r--','LineWidth', 1.5);
title('plot of y1()t and y2(t)');
xlabel('Time(s)');
ylabel('y');
legend('y1', 'y2');
grid on;
hold off;

% b:
x = -2:0.05:2;

f = sin(x) .^ 2 + sinh(x) .^ 2;
Z = cos(x) .^ 2 + cosh(x) .^ 2;
k = x .^ 2 + 2 * x .* sin(x);

figure(2);
subplot(3,1,1);
plot(x, f, 'm', 'LineWidth', 1.5);
title('f(x)');

subplot(3,1,2);
plot(x, Z, 'g', 'LineWidth', 1.5);
title('Z(x)');

subplot(3,1,3);
plot(x, k, 'r', 'LineWidth', 1.5);
title('k(x)');

% c:
tc = 0:0.001:2;
sc = sin(2*pi*3*tc);

ts = 0:0.1:2;
ss = sin(2*pi*3*ts);

figure(3);
subplot(2,1,1);
plot(tc, sc, 'b', 'LineWidth', 1.2);
title(['Cont Carrier Signal s(t)']);
xlabel('Time(s)');
ylabel('s(t)');
grid on;

subplot(2,1,2);
stem(ts, ss, 'r', 'LineWidth', 1.2);
title('Samp Carrier Signal (dt = 0.1s)');
xlabel('Time(s)');
ylabel('s(t)');
grid on;