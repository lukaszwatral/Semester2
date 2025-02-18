#X-zmienna badana
#G-zmienna grupujaca
x=c(10.2,8.7,12.5,13.8,7.6,8.2,9.8,10.9,11.6,14.2,14.3,14.1,17,13.2,11.9,10.9,9.3,10.4,12,13.6,13.5,14.7,15.3,14.9) #Ankieta$Wzrost #zmienna ilosciowa
y=c(rep(c(1), 10), rep(c(2),7), rep(c(3), 7)) #Ankieta$Plec #zmienna jakosciowa
y1=as.character(y)
TukeyHSD(aov(x~y1))
plot(TukeyHSD(aov(x~y1)))