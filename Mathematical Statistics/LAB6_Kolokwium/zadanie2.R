A = matrix(c(2, 1, 1, 1, 4, -1, -1, 2, 2), 3, 3)

b = c(2, 7, 2)

odA = solve(A)
detA = det(A)

x = solve(A)%*%b
x