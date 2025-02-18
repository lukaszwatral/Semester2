#X=N(m=6.4, s=?)
m = 6.4
a = 2
p = 0.244

#a)
s = (a-m)/qnorm(p)

#b)
b = qnorm(0.8, m, s)

#c) P(X<0)
PC = pnorm(0, m, s) * 100