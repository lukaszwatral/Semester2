x = c(8910, 8979, 9022, 9081, 9148, 9184, 9212, 9232)
y = c(4503.14, 4612.89, 4682.76, 4788.77, 4823.25, 4939.11, 5041.83, 5119.06)
#wynik = lm(y~x)
#ggplot(,aes(x,y))+geom_point()+geom_abline(intercept=wynik$coefficients[1], slope= wynik$coefficients[2])
cor.test(x, y, method="pearson")

#summary(wynik)