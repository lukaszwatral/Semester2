x = Ankieta$Waga
y = Ankieta$Wzrost
cor.test(x, y, method="spearman") #SREDNIA ZALEZNOSC
wynik = lm(y~x)
ggplot(Ankieta,aes(x,y))+geom_point()+geom_abline(intercept=wynik$coefficients[1], slope= wynik$coefficients[2])