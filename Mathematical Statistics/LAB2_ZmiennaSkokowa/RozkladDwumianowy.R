#ROZKŁAD DWUMIANOWY PRAWDOPODOBIEŃSTWA #sukces-porażka
p = 0.15
n = 10;
k = 0:n #zmienna losowa moze przyjac takie wartosci
RP = data.frame(x=k, pi=dbinom(k, n, p)) #rozkład prawdopodobieństwa
plot(RP)
EX = n * p #wartosc oczekiwana
D2X = n * p * (1-p) #wariancja

a = 3
b = 1
c = 3
d = 0
e = 4
PA = dbinom(a, n, p) #P(X=a)
PB = pbinom(b, n, p) #P(X<b+1)=P(X<=b)=F(b)
PC = 1-pbinom(c, n, p) #P(X>=c+1)=P(X>c)=1-F(c)
PD = pbinom(e, n, p) - pbinom(d, n, p) #P(d<X<=e) = F(e) - F(d)

#kwantyl rzedu p1 (inne p niż parametr rozkładu)
p1=0.75
k1 = qbinom(p1, n, p)