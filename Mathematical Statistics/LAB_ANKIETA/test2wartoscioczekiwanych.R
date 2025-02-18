#x-pierwsza grupa, y-druga grupa
x=c(20,33,35,25,30,27) #AnkietaM$Wzrost
y=c(28,30,33,20,24,18) #AnkietaK$Wzrost
#H0: rowne wartosci oczekiwane, H1: rózne wartosci oczekiwane
t.test(x,y,var.equal = TRUE)
pvalue=t.test(x,y,var.equal = TRUE)$p.value #wyznaczenie z testu parametru p-value
pvalue
alfa=0.05 # poziom istotnosci testu
decyzja=ifelse(pvalue >alfa,"na poziomie istotnosci alfa brak podstaw do odrzucenia H0","na poziomie istotnosci alfa odrzucamy H0, na korzysc H1")
decyzja