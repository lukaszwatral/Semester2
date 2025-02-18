#X-zmienna badana
#G-zmienna grupujaca
x=AnkietaM$sredniaocen #zmienna ilosciowa
y=AnkietaM$Rok #zmienna jakosciowa
#H0 : rowne mediany
#H1 : mediany nie wszystkie równe
kruskal.test(x,y)
pvalue=kruskal.test(x,y)$p.value #wyznaczenie z testu parametru p-value
pvalue
alfa=0.05 # poziom istotnosci testu
decyzja=ifelse(pvalue >alfa,"na poziomie istotnosci alfa brak podstaw do odrzucenia H0","na poziomie istotnosci alfa odrzucamy H0, na korzysc H1")
decyzja #rożnica median