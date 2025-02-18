x = seq(-5,5,0.01)
#rozkład normalny parametrów m i s
m = 0 #"średnia"
s = 1 #"odchylenie"
y1 = dnorm(x, m, s) #gęstość
plot(x, y1)
y2 = pnorm(x, m, s) #dystrybuanta
plot(x, y2)

#rozkład t-Studenta parametr k - stopnie swobody
k = 10
y3 = dt(x, k) #gęstość
plot(x, y3)
y4 = pt(x, k) #dystrybuanta
plot(x, y4)