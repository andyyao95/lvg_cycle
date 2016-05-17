%solving dynamic 3-period models with leverage and tranching with autarky
%and trade assets

format compact

OP=optimset('display','off');

disp('...')
disp('...')
disp('Solving Fed q(h) Model')


%Leverage Cycle, with q(h) = h
   
Equilibrium=fsolve(@(x) solve_qh(x),[0.7;0.5;0.3;0.5;0.4;0.9;0.8;0.7;0.5],OP);
disp('Results')
dataset(Equilibrium)