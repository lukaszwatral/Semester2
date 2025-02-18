# odsetek=wskaźnik struktury
x=Ankieta$Wzrost
#k- jaka częśc proby spełnia podany warunek x>8
x0=165
k=mean(x<x0)*length(x)
k
n=length(x)
n
p0=0.2
#Ho: p=p0, H1 p!=p0 tabela 22
prop.test(k,n,p=p0)
pvalue=prop.test(k,n,p=p0)$p.value #wyznaczenie z testu parametru p-value
pvalue
alfa=0.05 # poziom istotnosci testu
decyzja=ifelse(pvalue >alfa,"na poziomie istotnosci alfa brak podstaw do odrzucenia H0","na poziomie istotnosci alfa odrzucamy H0, na korzysc H1")
decyzja