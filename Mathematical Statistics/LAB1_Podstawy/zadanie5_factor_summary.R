v = c(2^(1:20)) #wektor 2^1:20


i = sum((ifelse(factor(v%%7)==0, 1, 0))) #ile liczb jest podzielnych przez 7
print(i)
summary(factor(v%%10)) #jak czesto wystepuja liczby na koncu