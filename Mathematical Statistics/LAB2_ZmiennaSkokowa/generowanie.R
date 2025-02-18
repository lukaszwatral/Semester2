m = 100 #liczba elementów w generowanym wektorze

#wartosc oczekiwana 2 EX = n*p, czyli n=m, p=EX/n

n=m
p=2/m
x1=rbinom(m, n, p)
summary(factor(x1))
plot(0:6, summary(factor(x1)))

#Kostka
x=1:6
n=100
x2=sample(x,n,replace=TRUE)
mean(x2)
var(x2)
summary(factor(x2))
plot(x, summary(factor(x2)))