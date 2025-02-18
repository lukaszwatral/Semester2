#|x - a| < b
#X różni się od a o mniej niż b

#X ma rozkład normalny o m i s
m = 10
s = 2
#P(X<a)=P(X<=a)
a = 12.5
PA = pnorm(a, m, s)
PA
#P(X>=b)=P(X>b)=1-P(X<=b)
b = 8
PB = 1-pnorm(b, m, s)
PB
#P(c<X<d)
c = 7
d = 10
PC = pnorm(d, m, s)-pnorm(c, m, s)
PC
#P(|X-e|<f)=P(e-f<X<e+f)
e = 10
f = 2
PD = pnorm(e+f, m, s) - pnorm(e-f, m, s)
PD
#P(|X-g|>h) = P(X<g-h)+P(X>g+h)
g = 10
h = 3
PE = pnorm(g-h, m, s)+1-pnorm(g+h, m, s)
PE
