#Test normalnośći Shapiro-Wilka
x = c(226.32, 306.36, 292.8, 318.6, 355.2, 528.24)
#H0: X ma rozkład normalny
#H1: ~H0
#TEST
pvalue=shapiro.test(x)$p.value
alpha = 0.05
pvalue
#jeśli p-value > alpha = brak podstaw do odrzucenia H0
#jeśli p-value <= alpha = odrzucamy H0, na korzyść H1
decyzja = ifelse(pvalue>alpha, "na poziomie istotnosci alfa brak podstaw do odrzucenia hipotety H0", "na poziomie istotności alfa odrzucamy H0, na korzyść H1")
decyzja