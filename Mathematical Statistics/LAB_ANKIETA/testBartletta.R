#X-zmienna badana
#G-zmienna grupujaca
x=c(80, 50, 72, 70, 51, 69, 82, 51, 25, 38, 63, 45, 46, 64, 60, 33, 58, 68, 82, 30, 38, 54, 38, 52, 70, 42, 92, 70, 91, 82, 70, 60, 21, 38, 64, 49) #zmienna ilosciowa
y=c(rep(c(1), 8), rep(c(2),6), rep(c(3), 5), rep(c(4), 6), rep(c(5), 6), rep(c(6), 5)) #zmienna jakosciowa
#H0 : rowne wariancje
#H1 : wariancje nie wszystkie równe
bartlett.test(x,y)
pvalue=bartlett.test(x,y)$p.value #wyznaczenie z testu parametru p-value
pvalue
alfa=0.1 # poziom istotnosci testu
decyzja=ifelse(pvalue >alfa,"na poziomie istotnosci alfa brak podstaw do odrzucenia H0","na poziomie istotnosci alfa odrzucamy H0, na korzysc H1")
decyzja