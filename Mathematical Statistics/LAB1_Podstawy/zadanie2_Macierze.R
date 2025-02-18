a = c(1.5, -2, 2, 2, 3, 9, 3, -1, 1) #kolumnami
A = matrix(a, 3, 3)

b = c(1, 2, -2, 2.5, -1, 3, 3, 6, -1)
B = matrix(b, 3, 3)

AB = A%*%B #Macierz A*B

BA = B%*%A #Macierz B*A

odA = solve(A) #Macierz odwrotna A(A^-1)

odB = solve(B) #Macierz odwrotna B(B^-1)

tA = t(A) #Macierz transponowana A

tB = t(B) #Macierz transponowana B

detA = det(A) #Wyznacznik macierzy A

detB = det(B) #Wyznacznik macierzy B

a1b2 = A[1,] %*% B[,2] #mnożenie (a1.) * (b.2)