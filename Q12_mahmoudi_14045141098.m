clc;
clear;

% a:
X = (2+3i)/(3-4i);
fprintf('X = %.3f + %.3fi\n',real(X),imag(X));

% b:
a = 50;
b = 2e-4;
L = 0.1;
R = 10;

c = 2 * pi * a;
i = R + 1i * (c * L - 1/(c * b));

fprintf('Real part of Z: %.3f\n',real(i));
fprintf('Imag part of Z: %.3f\n',imag(i));

% c:
i_amount = abs(i);
i_phaze = angle(i) * (180 / pi);

fprintf('|i| = %.5f ohm\n',i_amount);
fprintf('Phase = %.2f degrees\n',i_phaze);