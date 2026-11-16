clear
clc
elec_perday = 4.2; 
price = 5000 ; 
salary_permonth = ((elec_perday * price) * 30);
salary_peryear = ((elec_perday * price) * 365);

fprintf('Monthly incom : %0.2f Toman \n',salary_permonth)
fprintf('Annual incom : %0.2f Toman \n',salary_peryear)
fprintf('100%% CLEAN ENERGY!')

who
format long
disp('10/3  long:')
disp(10 / 3)

format short
disp('10/3  short:')
disp(10 / 3)