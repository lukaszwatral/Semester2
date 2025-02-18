#prawdopodobieństwo urodzenia chłopca = 0.51
p = 0.51
n = 1000

#P(X<500)
a = 499+0.5
PA = pnorm(a, n*p, sqrt(n*p*(1-p)))

#P(X<480)
b = 519 + 0.5
PB = 1 - pnorm(b, n*p, sqrt(n*p*(1-p)))