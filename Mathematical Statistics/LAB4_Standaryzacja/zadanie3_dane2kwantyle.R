#X=N(m=?, s=?) dane 2 kwantyle
a1 = 2
a2 = 10
p1 = 0.05
p2 = 0.9
A = matrix(c(1, 1, qnorm(p1), qnorm(p2)), 2, 2)
A
b = c(a1, a2)

par = solve(A)%*%b #parametry rozkładu
par
m=par[1]
s=par[2]
m
s

#a) P(X<5)
PA = pnorm(5, m, s)
PA * 100

#b) P(X>8) = 1 - P(X<8)
PB = 1 - pnorm(8, m, s)
PB * 100

#c) P(3<X<5) = P(X<5) - P(X<3)
PC = pnorm(5, m, s) - pnorm(3, m, s)
PC * 100

t = (1 - pnorm(m+2, m, s) + pnorm(m-2, m, s)) * 100