#test Wilcoxona
#x-pierwsza grupa, y-druga grupa
x= AnkietaS$sredniaocen
y= AnkietaN$sredniaocen
#H0: rowne mediany, H1: rózne mediany
wilcox.test(x,y)
pvalue=wilcox.test(x,y)$p.value #wyznaczenie z testu parametru p-value
pvalue
alfa=0.05 # poziom istotnosci testu
decyzja=ifelse(pvalue >alfa,"na poziomie istotnosci alfa brak podstaw do odrzucenia H0","na poziomie istotnosci alfa odrzucamy H0, na korzysc H1")
decyzja
boxplot(x, y)