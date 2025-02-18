#x-zmienna o rozkładzie normalnym - 1. test normalnosci
x=AnkietaM$Wzrost # analizowana zmienna
#H0 : mu = 180;
# 1.H1 : mu != 180
t.test(x,mu=180)
pvalue=t.test(x,mu=180)$p.value #wyznaczenie z testu parametru p-value
pvalue
alfa=0.05 # poziom istotnosci testu
decyzja=ifelse(pvalue >alfa,"na poziomie istotnosci alfa brak podstaw do odrzucenia H0","na poziomie istotnosci alfa odrzucamy H0, na korzysc H1")
decyzja
#2.H1: >
t.test(x,mu=180,alternative = "greater") #H0 : mu = 180;H1 : mu > 180 z tabeli 22
pvalue1=t.test(x,mu=180,alternative = "greater")$p.value #wyznaczenie z testu parametru p-value
pvalue1
decyzja1=ifelse(pvalue1 >alfa,"na poziomie istotnosci alfa brak podstaw do odrzucenia H0","na poziomie istotnosci alfa odrzucamy H0, na korzysc H1")
decyzja1
#3. H1: < 177
t.test(x,mu=177,alternative = "less") #H0 : mu = 177;H1 : mu <177 z tabeli 22
pvalue2=t.test(x,mu=177,alternative = "less")$p.value #wyznaczenie z testu parametru p-value
pvalue2
decyzja2=ifelse(pvalue2 >alfa,"na poziomie istotnosci alfa brak podstaw do odrzucenia H0","na poziomie istotnosci alfa odrzucamy H0, na korzysc H1")
decyzja2