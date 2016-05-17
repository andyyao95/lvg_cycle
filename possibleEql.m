%A1, checked 

((hD1-hD2)*(1+p0)*(pD1-pD2/(1+r1))/(p0-pD2) + (hD2-hPi)*(1+p0)*pD1/(Pi/(1+r0)) + (hPi-H1)*(1+p0)/(1+r0))/(pD1-R1/(1+r1)) - 1;

%A2, checked 

((hD1-hD2)*(1+p0)*(pD1-pD2/(1+r1))/(p0-pD2) + (hD2-H1)*(1+p0)*pD1/(Pi/(1+r0))) /(pD1-R1/(1+r1)) - 1;

%A3, checked

((hD1-H1)*(1+p0)*(pD1-pD2)/(p0-pD2/(1+r0))) /(pD1-R1/(1+r1)) - 1;

%B1, checked

((hD2-hPi)*(1+p0)*pD2/(Pi/(1+r0)) + (hPi - H2)*(1+p0)/(1+r0))/(pD2-R2/(1+r2)) - 1;

%B2, checked 

((hD2-H2)*(1+p0)*pD2/(Pi/(1+r0)))/(pD2-R2/(1+r2)) - 1;

%C1, checked

( hD2*(1-pD2)+(1-hD2)*qh(hD2)*(pD1-pD2)*hD2*(1-R1)/(pD1-R1/(1+r1))  )/(p0-pD2/(1+r0)) - (   hD2*pD1 + (1-hD2)*qh(hD2)*pD1*hD2*(1-R1)/(pD1-R1/(1+r1)) + (1-hD2)*(1-qh(hD2))*pD2*hD2*(1-R2)/(pD2-R2/(1+r2)))/(Pi/(1+r0));

%C2, checked

( hD2*(1-pD2) + (1-hD2)*qh(hD2)*(pD1-pD2))/(p0-pD2/(1+r0)) - ( (1- (1-hD2)*(1-qh(hD2)))*pD1+(1-hD2)*(1- qh(hD2) )*pD2*hD2*(1-R2)/(pD2-R2/(1+r2))   )/(Pi/(1+r0));


%D1, checked

1 - ( (1-(1-hPi)*(1- qh(hPi)  ))*pD1 + (1-hPi)*(1-  qh(hPi)  )*pD2   )/(Pi/(1+r0));

%D2, checked

1 - (  hPi*pD1 +  (1-hPi)*qh(hPi)*pD1*hPi*(1-R1)/(pD1-R1/(1+r1)) + (1-hPi)*(1-qh(hPi))*pD2*hPi*(1-R2)/(pD2-R2/(1+r2))  )/(Pi/(1+r0));

%D3, checked

1 - (  (1-(1-hPi)*(1-  qh(hPi)  ))*pD1 + (1-hPi)*(1-  qh(hPi))*pD2*hPi*(1-R2)/(pD2-R2/(1+r2))  )/(Pi/(1+r0));

%D4, checked

1 - ( hPi*pD1 + (1-hPi)*qh(hPi)*pD1*hPi*(1-R1)/(pD1-R1/(1+r1)) + (1-hPi)*(1-qh(hPi))*pD2  )/(Pi/(1+r0));
