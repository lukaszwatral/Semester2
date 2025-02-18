A = matrix(c(3, 2, -1, 3, 4, -1, -1, 2, 2), 3, 3) #Tworzenie macierzy
b = c(2, 3, 1)

x = solve(A)%*%b #Rozwiązywanie za pomocą macierzy odwrotnej
data.frame(x=x[1,],y=x[2,],z=x[3,])