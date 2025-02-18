#X=N(m=?, s) #nieznana średnia(wartość oczekiwana)
s = 0.05
a = 0.98
p = 0.35 #kwantyl rzędu p
m = a - s*qnorm(p)

#a) P(X<0.95)
PA = pnorm(0.95, m, s)
PA * 100

#b) P(X>1.05) = 1 - P(X<1.05)
PB = 1 - pnorm(1.05, m, s)
PB * 100

#c) P(0.98<X<1.02) = P(X<1.02)-P(X<0.98)
PC = pnorm(1.02, m, s) - pnorm(0.98, m, s)
PC * 100

#na 1000 opakować 400 waży więcej, czyli 60%
t = qnorm(0.6, m, s)
