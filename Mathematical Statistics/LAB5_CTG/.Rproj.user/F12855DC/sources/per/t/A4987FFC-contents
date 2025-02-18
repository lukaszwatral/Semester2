#CTG
s = 400
m = 3000
n = 50

#P(x1+x2+...+x50<155000)
a = 155000
PA = pnorm(a, n*m, s*sqrt(n))

#P(x1+x2+...+x50>148000) = 1-P(x1+x2+...+x50<148000)
b = 148000
PB = 1-pnorm(b, n*m, s*sqrt(n))

#P(140000<x1+x2+...+x50<155000)
c1 = 140000
c2 = 155000
PC = pnorm(c2, n*m, s*sqrt(n)) - pnorm(c1, n*m, s*sqrt(n))