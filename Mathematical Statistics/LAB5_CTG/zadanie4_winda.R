#waga człowieka N(75, 15)
n = 14 #14 osób wchodzi
m = 75
s = 15
#P(x1+x2+...+x14<1000) #waga 14 osób nie przekracza 1000kg
a = 1000
PA = pnorm(a, n*m, s*sqrt(n))

#P(x1+x2+...+xns<1000) = 0.999, szukane ns=?
b = 1000
ns = 11 #ręczne poszukiwanie liczby
PB = pnorm(b, ns*m, s*sqrt(ns))