#RZUCAMY 1000 razy symetryczną sześcienną kostką
n = 1000
m = 1/6*(1+2+3+4+5+6) #wartość oczekiwana(EX)
EX2 = 1/6*(1+4+9+16+25+36) 
D2X = EX2-m^2
s = sqrt(D2X) #odchylenie standardowe

#uwzględniamy poprawkę, bo zmienna przyjmuje wartości całkowite
#P(x1+x2+...+x1000>3480+0.5)
a = 3480 + 0.5
PA = pnorm(a, n*m, s*sqrt(n))

#P(x1+x2+...+x1000>3550) = 1-P(x1+x2+...+x1000<3550)
b = 3550 + 0.5
PB = 1 - pnorm(b, n*m, s*sqrt(n))

#P(3450-0.5<x1+x2+...+x1000<3500+0.5)
c1 = 3450 - 0.5
c2 = 3500 + 0.5
PC = pnorm(c2, n*m, s*sqrt(n)) - pnorm(c1, n*m, s*sqrt(n))