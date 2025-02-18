//1. Napisz klasę Trojkat zawierającą : 
//-prywatne zmienne przechowujące długość wysokości i podstawy trójkąta,
//-publiczne metody przypisujące wartości do prywatnych zmiennych 
//-publiczne metody zwracające wartości prywatnych zmiennych 
//-publiczną metodę pole obliczającą i zwracającą pole powierzchni trójkąta 
//-konstruktor przyjmujący jako parametry długość wysokości i podstawy trójkąta
//2.Napisz funkcję, która przyjmuje jako parametry dwa wskaźniki na obiekty Trojkat i wypisuje wymiary 
//oraz pole tego spośród trójkątów, który ma większe pole. 
//3. W funkcji main utwórz dwie zmienne przechowujące dane dla trójkąta.
//Wczytaj dane dla pierwszego trójkąta.
//Utwórz za pomocą operatora new pierwszy obiekt z klasy Trojkat.
//Wczytaj dane dla drugiego trójkąta.
//Utwórz za pomocą operatora new drugi obiekt z klasy Trojkat.
//4.Wywołaj napisaną w kroku 2 funkcję.

#include <iostream>

using namespace std;

class Trojkat
{
    float a, h; //zmienne
public:
    Trojkat(float a=1, float h=1) //konstruktor
    {
        this->a = a;
        this->h = h;
    }
    void setA(float a) //przypisanie a
    {
        this->a = a;
    }
    void setH(float h) //przypisanie h
    {
        this->h = h;
    }
    float getPodstawa() //pokazuje a i h
    {
        return a;
    }
    float getWysokosc()
    {
        return h;
    }
    float obliczPole() // oblicza pole
    {
        return ((a * h) / 2);
    }

  //  friend void sedzia(Trojkat *x1, Trojkat *x2); //funkcja zaprzyjazniona
};

void sedzia(Trojkat* x1, Trojkat* x2)
{
    system("cls");
    if (x1->obliczPole() > x2->obliczPole())
    {
        cout << "Wieksze pole ma trojkat nr 1!" << endl;
        cout << "a: " << x1->getPodstawa() << endl;
        cout << "h: " << x1->getWysokosc() << endl;
        cout << "Pole trojkata: " << x1->obliczPole();
    }
    else if(x1->obliczPole()==x2->obliczPole())
    { 
        cout << "Oba trojkaty maja rowne pola!" << endl;
        cout << endl << "Pierwszy trojkat: " << endl;
        cout << "a: " << x1->getPodstawa() << endl;
        cout << "h: " << x1->getWysokosc() << endl;
        cout << "Pole trojkata: " << x1->obliczPole() << endl;
        cout << endl << "Drugi trojkat: " << endl;
        cout << "a: " << x2->getPodstawa() << endl;
        cout << "h: " << x2->getWysokosc() << endl;
        cout << "Pole trojkata: " << x2->obliczPole() << endl;
    }
    else
    {
        cout << "Wieksze pole ma trojkat nr 2!" << endl;
        cout << "a: " << x2->getPodstawa() << endl;
        cout << "h: " << x2->getWysokosc() << endl;
        cout << "Pole trojkata: " << x2->obliczPole() << endl;
    }
}

int main()
{
    float a, h;
    Trojkat *t1;
    Trojkat *t2;
    cout << "Podaj dlugosc podstawy pierwszego trojkata: ";
    cin >> a;
    cout << "Podaj wysokosc pierwszego trojkata: ";
    cin >> h;
    if (a <= 0 || h<=0)
    {
        cout << "Bledne dane!";
        exit(0);
    }
    t1 = new Trojkat (a, h);
    cout << "Podaj dlugosc podstawy drugiego trojkata: ";
    cin >> a;
    cout << "Podaj wysokosc drugiego trojkata: ";
    cin >> h;
    if (a <= 0 || h <= 0)
    {
        cout << "Bledne dane!";
        exit(0);
    }
    t2 = new Trojkat(a, h);

    sedzia(t1, t2);

    delete t1;
    delete t2;
}