clc;
clear;

% a:
usage = 10 * rand(1,5);

figure(1);
bar(usage, 'r');
title('Daily Electricity usage');
xlabel('Day');
ylabel('usage(kwh)');
grid on;

% b:
shares = [22 28 8 33 11];

figure(2);
pie(shares);
title('House Electricity usage');

% c:
explode = [0 0 0 1 0];
labels = {'Cooling','Water Heater','Lighting','Other Appliances','Charging'};

figure(3);
pie(shares,explode,labels);
title('Household Electricity usage');