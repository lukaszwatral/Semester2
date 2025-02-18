#RZUCAMY 1000 razy symetryczną sześcienną kostką
n = 1000
p = 1/6 #prawdopodobieństwo sukcesu
#P(X>170) = 1-P(X<=170) #1 - sukces
#uwzgledniamy poprawke, bo zmienna przyjmuje wartości całkowite
a = 170+0.5
PA = 1 - pnorm(a, n*p, sqrt(n*p*(1-p)))

#P(X<350) 5 i 6 - sukces => p=2/6 = 1/3
p1 = 1/3
b = 349+0.5
PB = pnorm(b, n*p1, sqrt(n*p1*(1-p1)))
PB

#P(400<x<500) 2, 4, 6 - sukces => p = 3/6 = 1/2
p2 = 1/2
c1 = 400 - 0.5
c2 = 500 + 0.5
PC = pnorm(c2, n*p2, sqrt(n*p2*(1-p2))) - pnorm(c1, n*p2, sqrt(n*p2*(1-p2)))