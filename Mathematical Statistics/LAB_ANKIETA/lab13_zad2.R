a = c(276, 283, 117, 247)
v = matrix(a, 2, 2)
chisq.test(v)
alfa=0.05 # poziom istotnosci testu
pvalue=chisq.test(v)$p.value
xsquared = chisq.test(v)$statistic
decyzja=ifelse(pvalue >alfa,"na poziomie istotnosci alfa brak podstaw do odrzucenia H0","na poziomie istotnosci alfa odrzucamy H0, na korzysc H1")
decyzja
pvalue
t = sqrt(xsquared/(sum(v)*sqrt(1*1)))