m = 42 #s = ?
a = 36
p = 152/1000
s = (a-m)/qnorm(p)

#P(X<24)
PA = 10000*pnorm(24, m, s)
PB  = qnorm(0.3, m, s)