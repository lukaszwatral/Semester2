x = seq(-5, 5, 0.01)
m = 0
s = 1

y1 = dnorm(x, m, s)
plot(x, y1)

m = 0.5 #rozkład normalny z parametrami m i s
s = 2
y2 = dnorm(x, m, s)
plot(x, y2)

m = 2
s = 0.5
y3 = dnorm(x, m, s)
plot(x, y3)

#b) #rozkład t-Studenta ze stopniem swobody k
k = 10
y4 = dt(x, k)
plot(x, y4)

k = 3
y5 = dt(x, k)
plot(x, y5)

#c) #Rozkład Chi-kwadrat przy stopniu swobody k
x = seq(0, 20, 0.01) 

k = 10
y6 = dchisq(x, k)
plot(x, y6)

k = 3
y7 = dchisq(x, k)
plot(x, y7)

#d) #Rozkład F-Snedecora przy stopniach swobody k1 i k2
k1 = 10
k2 = 2

y8 = df(x, k1, k2)
plot(x, y8)

#e) #Rozkład jednostajny na przedziale (a, b)
a = 5
b = 12
y9 = dunif(x, a, b)
plot(x, y9)