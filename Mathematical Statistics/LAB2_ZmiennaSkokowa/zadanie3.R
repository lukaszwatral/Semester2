#rozkład Bernoulliego 
p = 0.04
n = 100
k = 0:n
RP = data.frame(x=k, pi=dbinom(k, n, p)) #rozkład prawdopodobieństwa
plot(RP)
EX = n * p #wartosc oczekiwana
D2X = n * p * (1-p) #wariancja

a = 5
b = 10
c = 100

P = pbinom(a, n, p)
PD = pbinom(c, n, p) - pbinom(b, n, p)

p1=0.9
k1 = qbinom(p1, n, p)