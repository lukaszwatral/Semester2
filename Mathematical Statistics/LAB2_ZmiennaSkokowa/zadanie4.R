#rozkład Poissona z parametram lambda
l = 10 #wartość oczekiwana liczby sukcesów w określonym czasie
n = 60
k = 0:n #zmienna losowa moze przyjac takie wartosci
RP = data.frame(x=k, dpois(k, l)) #rozkład prawdopodobieństwa
plot(RP)
EX = l #wartosc oczekiwana
D2X = l #wariancja

a = 12
b = 7
c = 16
PA = dpois(a, l) #P(X=a)
PB = ppois(b, l) #P(X<b+1)=P(X<=b)=F(b)
PC = 1-ppois(c, l) #P(X>=c+1)=P(X>c)=1-F(c)

#kwantyl rzedu p1 (inne p niż parametr rozkładu)
p1=0.7
k1 = qpois(p1, l)