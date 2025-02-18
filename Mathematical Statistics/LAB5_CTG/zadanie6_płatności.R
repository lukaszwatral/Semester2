#Płatności
n = 500
a = 74-0.5
b = 100+0.5
p = 16/100

PA = pnorm(b, n*p, sqrt(n*p*(1-p)))- pnorm(a, n*p, sqrt(n*p*(1-p)))