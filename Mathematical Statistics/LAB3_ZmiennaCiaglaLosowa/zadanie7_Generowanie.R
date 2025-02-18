#GENEROWANIE
#a) ROZKŁAD NORMALNY
m = 10
s = 4
x71 =rnorm(100, m, s)
mean(x71)
sd(x71)
hist(x71)

#b)
k = 5
x72 = rt(100, k)
mean(x72)
sd(x72)
hist(x72)

#c)
k = 9
x73 = rchisq(100, k)
mean(x73)
sd(x73)
hist(x73)

#d) ROZKŁAD JEDNOSTAJNY
a = 1
b = 10
x74 = runif(100, a, b)
mean(x74)
sd(x74)
hist(x74)