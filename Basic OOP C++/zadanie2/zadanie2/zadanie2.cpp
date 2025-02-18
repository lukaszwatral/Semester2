//Zdefiniuj klasę : Prostokat
//Klasa musi zawierać dwie zmienne : np „a” i „b”
//Przechowujące długości boków prostokąta - obie zmienne mają być prywatne.
//Dodaj do klasy konstruktor przyjmujący jako parametry dwie liczby(długości boków prostokąta) 
//Dodaj do klasy konstruktor bezparametrowy przypisujący do obu zmiennych(„a” i „b”) liczbę zero
//Dodaj do klasy następujące metody : float Pole() do obliczenia pola powierzchni, 
//float Obwod() do obliczenia obwodu, setA(float) do przypisywania długości boku „a”
//setB(float) do przypisywania długości boku „b”
//W funkcji main utwórz obiekt z klasy Prostokat o wymiarach 4 na 5
//Wypisz jego pole i obwód korzystając z metod Pole() i Obwod()
//Wczytaj dwie liczby podawane przez użytkownika z klawiatury.
//Utwórz drugi obiekt o podanych przez użytkownika wymiarach
//Wypisz jego pole i obwód korzystając z metod Pole() i Obwod()
//Zmień wymiary drugiego obiektu na 10 i 20 wywołując metody : setA, setB
//Wypisz pole i obwód korzystając z metod Pole() i Obwod() dla drugiego obiektu

#include <iostream>

using namespace std;

class Prostokat
{
    float a;
    float b;
public:
    Prostokat(float x, float y)
    {
        a = x;
        b = y;
    }

    Prostokat() 
    {
        a = 0;
        b = 0;
    }

    float Pole()
    {
        return a * b;
    }
    
    float Obwod()
    {
        return 2 * (a + b);
    }
    void setA(float x)
    {
        a = x;
    }
    void setB(float y)
    {
        b = y;
    }
};

int main()
{   
    Prostokat prostokat1(4, 5);
    cout << "Pole pierwszwego obiektu: " << prostokat1.Pole() << endl;
    cout << "Obwod pierwszego obiektu: " << prostokat1.Obwod() << endl;

    float a, b;
    cout << endl << "Podaj dlugosc boku a: ";
    cin >> a;
    cout << "Podaj dlugosc boku b: ";
    cin >> b;

    Prostokat prostokat2(a, b);
    cout << endl << "Pole drugiego obiektu: " << prostokat2.Pole() << endl;
    cout << "Obwod drugiego obiektu: " << prostokat2.Obwod() << endl;

    prostokat2.setA(10);
    prostokat2.setB(20);
    cout << endl << "Pole drugiego obiektu po zmianie: " << prostokat2.Pole() << endl;
    cout << "Obwod drugiego obiektu po zmianie: " << prostokat2.Obwod() << endl;
}

