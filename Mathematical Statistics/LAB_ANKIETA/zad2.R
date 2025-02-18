x = AnkietaM$Wzrost
#H0: X ma rozkład normalny
#H1: ~H0
#TEST
pvalue=shapiro.test(x)$p.value
alpha = 0.01
pvalue
#jeśli p-value > alpha = brak podstaw do odrzucenia H0
#jeśli p-value <= alpha = odrzucamy H0, na korzyść H1
decyzja = ifelse(pvalue>alpha, "na poziomie istotnosci alfa brak podstaw do odrzucenia hipotety H0", "na poziomie istotności alfa odrzucamy H0, na korzyść H1")
decyzja

#EstMduzaproba(x, 0.05)
EstSduzaproba(x, 0.02)

#d)
alfa = 0.05
#3. H1: < 182
t.test(x,mu=182,alternative = "less")#H0 : mu = 182;H1 : mu <182 z tabeli 22
pvalue2=t.test(x,mu=182,alternative = "less")$p.value #wyznaczenie z testu parametru p-value
pvalue2
decyzja2=ifelse(pvalue2 >alfa,"na poziomie istotnosci alfa brak podstaw do odrzucenia H0","na poziomie istotnosci alfa odrzucamy H0, na korzysc H1")
decyzja2

#e)
# odsetek=wskaźnik struktury
#k- jaka częśc proby spełnia podany warunek x>4
x0=185
k=mean(x>x0)*length(x)
k
n=length(x)
n
p0=0.25
#Ho: p=p0, H1 p!=p0 tabela 22
prop.test(k,n,p=p0, alternative="greater")
pvalue=prop.test(k,n,p=p0)$p.value #wyznaczenie z testu parametru p-value
pvalue
alfa=0.05 # poziom istotnosci testu
decyzja=ifelse(pvalue >alfa,"na poziomie istotnosci alfa brak podstaw do odrzucenia H0","na poziomie istotnosci alfa odrzucamy H0, na korzysc H1")
decyzja