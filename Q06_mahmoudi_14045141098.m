clear
clc

A = [120 80 45; 200 60 30; 90 140 75];
p = [35000; 80000; 120000];

bra_value1 = A * p;
disp(bra_value1)

bra_value2 = A .* p;
disp(bra_value2)

disp('A * p: ')
disp(bra_value1)
disp('A .* p: ')
disp(bra_value2)

A_move = A';
disp(A')

total = A * ones(3,1);
disp(total)