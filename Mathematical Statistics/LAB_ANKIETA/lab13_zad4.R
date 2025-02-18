x = Ankieta$Płeć
y = Ankieta$`Forma studiów`
chisq.test(x, y)
#H0 - niezależne
#H1 - zależne
pvalue=chisq.test(x,y)$p.value
alfa=0.01 # poziom istotnosci testu
decyzja=ifelse(pvalue >alfa,"na poziomie istotnosci alfa brak podstaw do odrzucenia H0","na poziomie istotnosci alfa odrzucamy H0, na korzysc H1")
decyzja