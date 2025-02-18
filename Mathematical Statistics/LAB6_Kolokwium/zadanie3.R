#ROZKŁAD GEOMETRYCZNY
p = 0.09

EX = 1/p
s =  #odchylenie czy dystrybuanta?

a = 4
PA = dgeom(a, p)
b = 6 #P(X<7)=P(X<=6)
PB = pgeom(b, p)

c = 10 #P(X>10)
PC = 1 - pgeom(c, p)

p1 = 0.9
k = qgeom(p1, p)