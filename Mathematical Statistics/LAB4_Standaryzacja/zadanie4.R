#X=N(m=5662,53, s=?)
a = 2800
m = 5662.53
p = 0.175
s = (a-m)/qnorm(p)

#a) P(X<3500)
PA = 100*(pnorm(3500, m, s))

#b) P(X>10000) = 1 - P(X<10000)
PB = 100*(1 - pnorm(10000, m, s))

#c) P(4000<X<5000) = P(X<5000) - P(X<4000)
PC = 100*(pnorm(5000, m, s) - pnorm(4000, m, s))

#10% najlepiej zarabiających
PD = qnorm(0.9, m, s)