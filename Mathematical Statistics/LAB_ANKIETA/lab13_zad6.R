x = c(1, 3, 2, 3, 3, 1, 0, 1, 1, 1, 0, 0, 0, 2, 0)
y = c(1, 2, 0, 2, 2, 1, 0, 2, 1, 1, 1, 0, 2, 2, 1)
cor.test(x,y, method="kendall")
alfa=0.05 # poziom istotnosci testu
pvalue=cor.test(x,y, method="kendall")$p.value
decyzja=ifelse(pvalue >alfa,"na poziomie istotnosci alfa brak podstaw do odrzucenia H0","na poziomie istotnosci alfa odrzucamy H0, na korzysc H1")
decyzja