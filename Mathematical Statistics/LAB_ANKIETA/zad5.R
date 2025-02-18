x = c(100, 140, 160, 200, 220, 230, 270)
y = c(170, 200, 195, 230, 220, 190, 240)
shapiro.test(y)

cor.test(x, y, method="pearson")
