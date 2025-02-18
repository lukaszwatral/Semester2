m = 1500
s = 300 #w pliku jest 300

a = 1200
PA = 500 * pnorm(a, m, s)

b = 1600
PB = 300*(1 - pnorm(b, m, s))

c1 = 1600
c2 = 1800
PC = pnorm(c2, m, s) - pnorm(c1, m, s)

k1 = qnorm(0.15, m, s)

k2 = qnorm(0.75, m, s)