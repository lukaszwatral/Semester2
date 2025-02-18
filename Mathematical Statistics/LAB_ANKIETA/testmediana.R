x=Ankieta$Wzrost # analizowana zmienna
#H0 : mu = 180;
# 1.H1 : mu!= 180
wilcox.test(x,mu=180)
pvalue=wilcox.test(x,mu=180)$p.value #wyznaczenie z testu parametru p-value
pvalue
alfa=0.05 # poziom istotnosci testu
decyzja=ifelse(pvalue >alfa,"na poziomie istotnosci alfa brak podstaw do odrzucenia H0","na poziomie istotnosci alfa odrzucamy H0, na korzysc H1")
decyzja
# 2.H1 : mu> 180
wilcox.test(x,mu=180,alternative = "greater")
pvalue1=wilcox.test(x,mu=180,alternative = "greater")$p.value #wyznaczenie z testu parametru p-value
pvalue1
alfa=0.05 # poziom istotnosci testu
decyzja1=ifelse(pvalue1 >alfa,"na poziomie istotnosci alfa brak podstaw do odrzucenia H0","na poziomie istotnosci alfa odrzucamy H0, na korzysc H1")
decyzja1
# 3.H1 : mu< 180
wilcox.test(x,mu=180,alternative = "less")
pvalue2=wilcox.test(x,mu=180,alternative = "less")$p.value #wyznaczenie z testu parametru p-value
pvalue2
alfa=0.05 # poziom istotnosci testu
decyzja2=ifelse(pvalue2 >alfa,"na poziomie istotnosci alfa brak podstaw do odrzucenia H0","na poziomie istotnosci alfa odrzucamy H0, na korzysc H1")
decyzja2