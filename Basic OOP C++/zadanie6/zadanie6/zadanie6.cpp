#include <iostream>

class Ulamek {
public:
    int licznik;
    int mianownik;
public:

    Ulamek(int a, int b) {
        this->licznik = a;
        if (b == 0) {
            std::cout << "Bledny ulamek";
            exit(0);
        }
        this->mianownik = b;
    }

    Ulamek() {
        this->licznik = 1;
        this->mianownik = 1;
    }

    void wypisz() {
        std::cout << licznik << "/" << mianownik << std::endl;
    }

    int nwd(int a, int b) {
        int pom;

        while (b != 0)
        {
            pom = b;
            b = a % b;
            a = pom;
        }
        return a;
    }

    int nww(int a, int b) {
        return (a / nwd(a, b) * b);
    }

    Ulamek operator + (Ulamek u) {
        Ulamek tmp;
        if (mianownik == u.mianownik) {
            tmp.licznik = licznik + u.licznik;
            tmp.mianownik = mianownik;
        }
        else {
            int x = nww(mianownik, u.mianownik);
            tmp.licznik = (x / mianownik * licznik) + (x / u.mianownik * u.licznik);
            tmp.mianownik = x;
        }
        return tmp;
    }

    Ulamek operator - (Ulamek u) {
        Ulamek tmp;
        if (mianownik == u.mianownik) {
            tmp.licznik = licznik - u.licznik;
            tmp.mianownik = mianownik;
        }
        else {
            int x = nww(mianownik, u.mianownik);
            tmp.licznik = (x / mianownik * licznik) - (x / u.mianownik * u.licznik);
            tmp.mianownik = x;
        }
        return tmp;
    }

    Ulamek operator * (Ulamek u) {
        Ulamek tmp;
        tmp.licznik = licznik * u.licznik;
        tmp.mianownik = mianownik * u.mianownik;
        return tmp;
    }

    Ulamek operator / (Ulamek u) {
        Ulamek tmp;
        tmp.licznik = licznik * u.mianownik;
        tmp.mianownik = mianownik * u.licznik;
        return tmp;
    }
};



int main()
{
    system("chcp 1250>nul"); //wyświetlanie polskich znaków
    int a, b;
    std::cout << "Podaj ułamek nr 1: " << std::endl;
    std::cin >> a >> b;
    Ulamek u1(a, b);
    std::cout << "Podaj ułamek nr 2: " << std::endl;
    std::cin >> a >> b;
    Ulamek u2(a, b);
    std::cout << "Dodawanie: ";
    Ulamek u3 = u1 + u2;
    u3.wypisz();
    std::cout << "Odejmowanie: ";
    Ulamek u4 = u1 - u2;
    u4.wypisz();
    std::cout << "Mnożenie: ";
    Ulamek u5 = u1 * u2;
    u5.wypisz();
    std::cout << "Dzielenie: ";
    Ulamek u6 = u1 / u2;
    u6.wypisz();
}

