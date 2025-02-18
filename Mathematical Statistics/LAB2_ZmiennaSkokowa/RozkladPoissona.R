#Rozkład Poissona z parametram lambda
l = 1 #wartość oczekiwana liczby sukcesów w określonym czasie
n = 100;
k = 0:n #zmienna losowa moze przyjac takie wartosci
RP = data.frame(x=n, pi=dpois(n, l)) #rozkład prawdopodobieństwa
plot(RP)
EX = l #wartosc oczekiwana
D2X = l #wariancja

a = 3
b = 1
c = 3
d = 0
e = 4
PA = dpois(a, l) #P(X=a)
PB = ppois(b, l) #P(X<b+1)=P(X<=b)=F(b)
PC = 1-ppois(c, l) #P(X>=c+1)=P(X>c)=1-F(c)
PD = ppois(e, l) - pbinom(d, l) #P(d<X<=e) = F(e) - F(d)

#kwantyl rzedu p1 (inne p niż parametr rozkładu)
p1=0.75
k1 = qbinom(p1, l)