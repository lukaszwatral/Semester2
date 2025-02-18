a = 11112
b = 11
iloraz = function(a, b) #deklaracja funkcji
{
  a %/% b #a div b
}

reszta = function(a,b) #deklaracja funkcji 
{
  a %% b #a mod b
}

modulo = function(a, b) #view
{
  w = data.frame(a, b, iloraz= a%/%b, reszta = a%%b)
}