clear
clc

V = input('please enter voltage : ');
R = input('please enter resistance : ');

I = (V / R);
P = (V * I);

fprintf('current = %.2f A \n', I);
fprintf('power = %.3f W', P);

