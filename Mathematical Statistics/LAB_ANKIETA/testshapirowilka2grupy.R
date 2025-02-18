#X-zmienna badana
#G-zmienna grupujaca
x=AnkietaM$sredniaocen #zmienna ilosciowa
y=AnkietaM$Rok #zmienna jakosciowa
boxplot(x~y)
#test Shapiro-Wilka grupami
#H0: zmienne w grupach maja rozklad zgodny z normalnym, H1: !H0
by(x,y,shapiro.test)
#jeśli p-value>alfa, to brak podstaw do odrzucenia H0 - rozkłady zgodne z normalnym
#jeśli p-value<=alfa, to odrzucamy H0 na korzysc H1, rozkłady nie są zgodne z normalnym
