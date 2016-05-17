function F = solve_qh(x)

%specify parameters 
hD1 = x(1);
hD2 = x(2);
hPi = x(3);
H1  = x(4);
H2  = x(5);
p0  = x(6); 
pD1 = x(7);
pD2 = x(8);
Pi = x(9);
R1 = 0.4;
R2 = 0.2;
r0 = 0.05;
r1 = 0.00;
r2 = 0.05;

%specify q(h)
    function y = qh(x)
        y = x;
    end

F=  [
% equations with certainty, checked 

(hD1*(1-pD1))/(p0-(Pi/(1+r0))) - ( hD1*(1-pD2)+(1-hD1)*qh(hD1)*(pD1-pD2)*(hD1*(1-R1))/(pD1-R1/(1+r1))           )/(p0-pD2/(1+r0)); 
(1-hD1)*(1+p0)/(p0-Pi/(1+r0)) + (hD1-hD2)*(1+p0)/(p0-pD2/(1+r0))-1;
(1-hD1)*(1+p0)/(p0-Pi/(1+r0)) - (hD2-hPi)*(1+p0)/(Pi/(1+r0));
H1*(1-R1)/(pD1-R1/(1+r1))-1;
qh(H2*(1-R2)/(pD2-R2/(1+r2))-1);

%A's

((hD1-hD2)*(1+p0)*(pD1-pD2/(1+r1))/(p0-pD2) + (hD2-H1)*(1+p0)*pD1/(Pi/(1+r0))) /(pD1-R1/(1+r1)) - 1;

%B's

((hD2-hPi)*(1+p0)*pD2/(Pi/(1+r0)) + (hPi - H2)*(1+p0))/(pD2-R2/(1+r2)) - 1;

%C's

( hD2*(1-pD2)+(1-hD2)*qh(hD2)*(pD1-pD2)*hD2*(1-R1)/(pD1-R1/(1+r1))  )/(p0-pD2/(1+r0)) - (   hD2*pD1 + (1-hD2)*qh(hD2)*pD1*hD2*(1-R1)/(pD1-R1/(1+r1)) + (1-hD2)*(1-qh(hD2))*pD2*hD2*(1-R2)/(pD2-R2/(1+r2)))/(Pi/(1+r0));

%D's

1 - (  (1-(1-hPi)*(1-  qh(hPi)  ))*pD1 + (1-hPi)*(1-  qh(hPi))*pD2*hPi*(1-R2)/(pD2-R2/(1+r2))  )/(Pi/(1+r0));

];
end