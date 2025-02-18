a = 1+0i #należy dopisać część urojoną
b = 2+0i
c = 3+0i

sqrt(-1+0i)
PierRowKw = function(a, b, c)
{
  data.frame(x1=(-b-sqrt(b^2-4*a*c))/(2*a), x2=(-b+sqrt(b^2-4*a*c))/(2*a))
}
PierwRowKw(a, b, c)