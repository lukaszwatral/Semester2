#X-rozkład wykładniczy, czas bezawaryjnej pracy urzadzenia
lambda = 1/100
#EX = 1/lambda
EX= 1/lambda
EX
#P(X<24)
PA=pexp(24, lambda)
PA
#P(X>36)=1-P(X<36)
PB=1-pexp(36, lambda)
PB
#kwantyl rzędu 0.9
p = 0.9
t = qexp(p, lambda)
t