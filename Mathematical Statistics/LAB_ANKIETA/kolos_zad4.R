x = AnkietaM$`Liczba godzin`
y = AnkietaM$ECTS
pvalue=shapiro.test(x)$p.value
alpha = 0.05
pvalue
#jeśli p-value > alpha = brak podstaw do odrzucenia H0
#jeśli p-value <= alpha = odrzucamy H0, na korzyść H1
decyzja = ifelse(pvalue>alpha, "na poziomie istotnosci alfa brak podstaw do odrzucenia hipotety H0", "na poziomie istotności alfa odrzucamy H0, na korzyść H1")
decyzja

#b)
cor.test(x,y, method="spearman")
alfa=0.05 # poziom istotnosci testu
pvalue=cor.test(x,y, method="spearman")$p.value
decyzja=ifelse(pvalue >alfa,"na poziomie istotnosci alfa brak podstaw do odrzucenia H0","na poziomie istotnosci alfa odrzucamy H0, na korzysc H1")
decyzja