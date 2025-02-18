//Klasa Macierz zawiera:
//private: 
    //statyczną tablicę dwuwymiarową o rozmiarze 3x3 przechowującą liczby zmiennoprzecinkowe  
    //zmienną przechowujące rozmiar tablicy
//public:
    //konstruktor - w którym wypełniamy tablicę zerami
    //metodę wczytajDane() wczytującą z klawiatury dane którymi będzie wypełniona macierz
    //metodę wypisz() wypisującą zawartość macierzy (każdy wiersz należy wypisywać w oddzielnej linii, poszczególne liczby w wierszu oddzielamy znakiem spacji lub tabulacji) 
//Napisz funkcję zaprzyjaźnioną dodajMacierze dodającą dwa obiekty klasy Macierz i zwracającą jako wynik wskaźnik na nowy obiekt klasy Macierz. 
//Wynik dodawania macierzy przechowujemy w nowym utworzonym obiekcie
//W programie należy za pomocą operatora new utworzyć dwa obiekty i dla każdego z nich wywołać metodę wczytajDane() oraz wypisz().
//Następnie wywołaj funkcję dodajMacierze oraz metodę wypisz dla nowego obiektu zawierającego wynik dodawania macierzy

#include <iostream>
#define N 3

using namespace std;

class Macierz {
private:
    float macierz[N][N];
    int rozmiar;
public:
    Macierz()
    {
        rozmiar = N;
        for (int i = 0; i < N; i++) {
            for (int j = 0; j < N; j++) {
                macierz[i][j] = 0;
            }
        }
    }
    void wczytajDane() {
        system("cls");
        for (int i = 0; i < N; i++) {
            for (int j = 0; j < N; j++) {
                float liczba;
                cout << "Podaj liczbe: ";
                cin >> liczba;
                macierz[i][j] = liczba;
            }
        }
    }
    void wypisz() {
        for (int i = 0; i < N; i++) {
            for (int j = 0; j < N; j++) {
                cout << macierz[i][j] << " ";
            }
            cout << endl;
        }
    }
    friend Macierz* dodajMacierze(Macierz* m1, Macierz* m2);
};

Macierz* dodajMacierze(Macierz* m1, Macierz* m2) {
    Macierz* m3;
    m3 = new Macierz;
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            m3->macierz[i][j] = m1->macierz[i][j] + m2->macierz[i][j];
        }
    }
    return m3;
}

int main()
{
    Macierz* m1;
    Macierz* m2;
    m1 = new Macierz;
    m2 = new Macierz;
    m1->wczytajDane();
    m2->wczytajDane();
    system("cls");
    m1->wypisz();
    cout << endl;
    m2->wypisz();
    cout << endl;
    Macierz* m3;
    
    m3 = dodajMacierze(m1, m2);
    m3->wypisz();

    delete m1;
    delete m2;
    delete m3;
}
