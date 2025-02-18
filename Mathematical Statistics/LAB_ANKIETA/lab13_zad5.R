x = c(2994.9, 4915.3, 3875.5, 588.5, 1678.1, 356.9, 1363.9)
y = c(4617.4, 5729.0, 2553.7, 463.1, 2181.9, 332.9, 1262.3)
chisq.test(x, y)
#H0 - niezależne
#H1 - zależne
pvalue=chisq.test(x,y)$p.value
alfa=0.05 # poziom istotnosci testu
decyzja=ifelse(pvalue >alfa,"na poziomie istotnosci alfa brak podstaw do odrzucenia H0","na poziomie istotnosci alfa odrzucamy H0, na korzysc H1")
decyzja