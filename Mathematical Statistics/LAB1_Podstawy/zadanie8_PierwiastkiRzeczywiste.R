PierwRowKw = function(a, b, c) #Wyliczanie pierwiastkow rzeczywistych
{
  delta = b^2 - 4*a*c
  if(delta<0)
  {
    print("Brak pierwiastkow rzeczywistych")
  }
  else if(delta == 0)
  {
    print(-b/2*a)
  }
  else
  {
    print((-b-sqrt(delta))/2*a)
    print((-b+sqrt(delta))/2*a)
  }
}

#PierwRowKw(1, 2, 1)
#PierwRowKw(10, 2, 5)
#PIerwRowKw(1, 5, 6)