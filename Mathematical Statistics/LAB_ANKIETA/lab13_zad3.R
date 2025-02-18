x = c(1, 1, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1)
y = c(3, 1, 2, 2, 1, 0, 2, 0, 2, 1, 2, 3)
cor.test(x,y, method="kendall")
alfa=0.05 # poziom istotnosci testu
pvalue=cor.test(x,y, method="kendall")$p.value
decyzja=ifelse(pvalue >alfa,"na poziomie istotnosci alfa brak podstaw do odrzucenia H0","na poziomie istotnosci alfa odrzucamy H0, na korzysc H1")
decyzja