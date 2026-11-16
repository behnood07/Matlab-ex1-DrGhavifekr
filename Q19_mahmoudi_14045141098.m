clc;
clear;

% a:
A = rand(4);
disp(A);

if isequal(A, A')
    disp('A is symmetric');
else
    disp('A is not symmetric');
end

% b:
S = (A + A') / 2;
disp(S);

if isequal(S, S')
    disp('S is symmetric');
else
    disp('S is not symmetric');
end

% c:
w = [6 4 9 ; 7 2 5 ; 7 2 1];
disp(w);

if isequal(w, w')
    disp('w is symmetric');
else
    disp('w is not symmetric');
end