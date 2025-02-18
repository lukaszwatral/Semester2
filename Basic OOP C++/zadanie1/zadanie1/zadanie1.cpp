//Napisz program, w którym : 
//1.Użytkownik podaje rozmiar tablicy
//2.Utwórz tablicę liczb typu double o podanym rozmiarze.Tablica ma być utworzona za pomocą : new
//3.Wypełnij tablicę liczbami podawanymi przez użytkownika
//4.Wypiszą zawartość tablicy
//5.Wypisz adresy każdego elementu tablicy
//6.Zwolnij pamięć
#pragma warning(disable : 4996)

#include <iostream>
#include <errno.h>

int main()
{
    using namespace std;

    int rozmiar;

    cout << "Podaj rozmiar tablicy: ";
    cin >> rozmiar;

    double* tablica;
    tablica = new double[rozmiar];
    if (errno != 0)
    {
        cout << "Blad: " << strerror(errno);
    }
    else
    {

        for (int i = 0; i < rozmiar; i++)
        {
            double liczba;
            cout << "Podaj " << i + 1 << ". element tablicy: ";
            cin >> liczba;
            tablica[i] = liczba;
        }

        cout << "Elementy tablicy: " << endl;
        for (int i = 0; i < rozmiar; i++)
        {
            cout << tablica[i] << endl;
        }
        for (int i = 0; i < rozmiar; i++)
        {
            cout << "Adres " << i+1 << ". elementu tablicy: " << &tablica[i] << endl;
        }
        delete[] tablica;
    }
}
