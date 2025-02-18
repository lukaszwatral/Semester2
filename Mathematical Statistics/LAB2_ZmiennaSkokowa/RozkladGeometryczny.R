#rozkład geometryczny z parametrem p #liczba porażek do wystąpienia sukcesu
p = 0.1
n = 100 #n teoretycznie do nieskończoności
k = 0:n
RP = data.frame(x=k, pi= dgeom(k, p))
plot(RP)


a = 4
b = 2
PA = dgeom(a, p)
PB = pgeom(b, p) 

#kwantyl rzedu p1 (inne p niż parametr rozkładu)
p1=0.8
k1 = 1 + qgeom(p1, p) #sukces = l. porazek + 1
k1