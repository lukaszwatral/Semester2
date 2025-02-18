x = AnkietaM$`Liczba godzin`
#Test normalnośći Shapiro-Wilka
#H0: X ma rozkład normalny
#H1: ~H0
#TEST
pvalue=shapiro.test(x)$p.value
alpha = 0.01
pvalue
#jeśli p-value > alpha = brak podstaw do odrzucenia H0
#jeśli p-value <= alpha = odrzucamy H0, na korzyść H1
decyzja = ifelse(pvalue>alpha, "na poziomie istotnosci alfa brak podstaw do odrzucenia hipotety H0", "na poziomie istotności alfa odrzucamy H0, na korzyść H1")
decyzja


EstMduzaproba(x, 0.95)
EstSduzaproba(x, 0.9)

#                      duża              mała
#wartość oczekiwana    EstMduzaproba()   t.test
#wariancja             -                 EstS2malaproba()
#odchylenie            EstSduzaproba()   EstSmalaproba()
#wskaznik              prob.test

#2.H1: >
alfa = 0.05
t.test(x,mu=8,alternative = "greater") #H0 : mu = 8;H1 : mu > 8
pvalue1=t.test(x,mu=8,alternative = "greater")$p.value #wyznaczenie z testu parametru p-value
pvalue1
decyzja1=ifelse(pvalue1 >alfa,"na poziomie istotnosci alfa brak podstaw do odrzucenia H0","na poziomie istotnosci alfa odrzucamy H0, na korzysc H1")
decyzja1

#e)
# odsetek=wskaźnik struktury
x=Ankieta$Wzrost
#k- jaka częśc proby spełnia podany warunek x<4
x0=4
k=mean(x<x0)*length(x)
k
n=length(x)
n
p0=0.25
#Ho: p=p0, H1 p!=p0 tabela 22
prop.test(k,n,p=p0)
pvalue=prop.test(k,n,p=p0)$p.value #wyznaczenie z testu parametru p-value
pvalue
alfa=0.05 # poziom istotnosci testu
decyzja=ifelse(pvalue >alfa,"na poziomie istotnosci alfa brak podstaw do odrzucenia H0","na poziomie istotnosci alfa odrzucamy H0, na korzysc H1")
decyzja