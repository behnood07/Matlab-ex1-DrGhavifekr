clc;
clear;

a = input('Enter a: ');
b = input('Enter b: ');
c = input('Enter c: ');

u = [a b c];

% a:
s = roots(u);
disp(s);

% b:
x = linspace(min(real(s))-2,max(real(s))+2,500);
y = polyval(u,x);

figure;
plot(x, y ,'r','LineWidth', 2);
title('roots crashing');
xlabel('x');
ylabel('y');
grid on;
hold on;

% c:
if isreal(s)
    plot(s, zeros(size(s)), 'ro','MarkerSize',8,'MarkerFaceColor','r');
end

hold off;