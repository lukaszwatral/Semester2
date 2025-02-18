//Napisz program, który wczyta  z pliku miasta.txt nazwy miast. Nazwy miast sąoddzielone spacją.
//Odczytane nazwy miast należy zapisać do pliku o nazwie miasta2.txt tak, aby każda z nazw była zapisana w oddzielnym wierszu.

#include <iostream>
#include <fstream>
#include <cstdlib>

using namespace std;


int main()
{
    ifstream plik1;
    ofstream plik2;
    plik1.open("miasta.txt");
    
    if (plik1.good() == false)
    {
        cout << "Plik nie istnieje";
        exit(0);
    }
    plik2.open("miasta2.txt");

    while (!plik1.eof())
    {
        string miasto;
        plik1 >> miasto;
        plik2 << miasto << endl;

    }
    plik1.close();
    plik2.close();
    cout << "Zapisano dane do pliku miasta2.txt!";

}

