#X=N(m, s=?) nieznane odchylenie standardowe
m = 180
a = 170.2 #P(X<170,2)=0.025
p = 0.025 #kwantyl rzędu p
s = (a-m)/qnorm(p)
s

#a) P(X<170)
PA=pnorm(170, m, s)
PA*100 #procent

#b) P(X>185) = 1-P(X<185)
PB = 1 - pnorm(185, m, s)
PB*100 #procent
#P(175<X<185) = P(X<185)-P(X<175)
PC = pnorm(185, m, s) - pnorm(175, m, s)
PC*100

#20% najwyżsZych
qnorm(0.8, m, s)

#10% najniższych
qnorm(0.1, m, s)