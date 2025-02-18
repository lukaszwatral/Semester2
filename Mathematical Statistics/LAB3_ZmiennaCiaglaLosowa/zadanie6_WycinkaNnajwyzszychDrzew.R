#X-wysokość drzewa w metrach
m = 25
s = 4
p = 0.25 #wycinamy 25% najwyższych - zostaje 75%

y = qnorm(1-p, m, s) #wycinamy 25% - zostaje 75%