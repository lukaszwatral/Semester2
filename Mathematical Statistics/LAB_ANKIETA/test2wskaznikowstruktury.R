#test dwa wskaźniki struktury
table(AnkietaS$`Szkoła średnia`)
#3 - technikum
k1 = table(AnkietaS$`Szkoła średnia`)[3]
k1
n1 = length(AnkietaS$`Szkoła średnia`)
n1
k2 = table(AnkietaN$`Szkoła średnia`)[3]
k2
n2= length(AnkietaN$`Szkoła średnia`)
n2

#H0: p1=p2
#H1: p1<p2

prop.test(c(k1, k2), c(n1, n2), alternative="less")
pvalue=prop.test(c(k1, k2), c(n1, n2), alternative="less")$p.value #wyznaczenie z testu parametru p-value
pvalue
alfa=0.05 # poziom istotnosci testu
decyzja=ifelse(pvalue >alfa,"na poziomie istotnosci alfa brak podstaw do odrzucenia H0","na poziomie istotnosci alfa odrzucamy H0, na korzysc H1")
decyzja