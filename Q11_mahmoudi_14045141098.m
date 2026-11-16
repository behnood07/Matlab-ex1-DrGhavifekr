syms t x

% a:
act1 = (cos(t)-1)/t^2;
answ1 = limit(act1,t,0);
disp(answ1);

% b:
act2 = 3-(2*t+1)/t;
answ2 = limit(act2,t,inf);
disp(answ2);

% c:
act3 = 1/x;
answl = limit(act3,x,0,'left');
answr = limit(act3,x,0,'right');

disp(answl);
disp(answr);