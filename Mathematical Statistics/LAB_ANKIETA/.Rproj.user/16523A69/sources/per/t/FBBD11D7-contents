x = AnkietaM$sredniaocen
y = AnkietaM$Rok
#test Shapiro-Wilka grupami
#H0: zmienne w grupach maja rozklad zgodny z normalnym, H1: !H0
by(x,y,shapiro.test)
#jeśli p-value>alfa, to brak podstaw do odrzucenia H0 - rozkłady zgodne z normalnym
#jeśli p-value<=alfa, to odrzucamy H0 na korzysc H1, rozkłady nie są zgodne z normalnym
#H0 : rowne wariancje
#H1 : wariancje nie wszystkie równe
  bartlett.test(x,y)
pvalue=bartlett.test(x,y)$p.value #wyznaczenie z testu parametru p-value
pvalue
alfa=0.05 # poziom istotnosci testu
decyzja=ifelse(pvalue >alfa,"na poziomie istotnosci alfa brak podstaw do odrzucenia H0","na poziomie istotnosci alfa odrzucamy H0, na korzysc H1")
decyzja