p = 0.03
n = 500

#!!!uwzgledniamy poprawke, bo zmienna przyjmuje wartości całkowite
#P(X<=4%*500)
a=0.04*500+0.5
PA=pnorm(a,n*p,sqrt(n*p*(1-p)))