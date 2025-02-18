// zadanie7.cpp : Dziedziczenie - grzyby

#include <iostream>
#include <string>

class Grzyb {
    bool jadalny;
public:
    std::string nazwaGrzyba;
    Grzyb(bool j, std::string nazwa) {
        this->jadalny = j;
        this->nazwaGrzyba = nazwa;
    }
    
    void wyswietl() {
        if (jadalny) {
            std::cout << nazwaGrzyba << " - " << "jadalny" << "\n";
        }
        else
            std::cout << nazwaGrzyba << " - " << "trujacy" << "\n";
    }
};

class Podgrzybek : public Grzyb {
public:
    Podgrzybek() :Grzyb(true, "Podgrzybek"){};
};

class Muchomor : public Grzyb {
public:
    Muchomor() :Grzyb(false, "Muchomor") {};
};

int main()
{
    Podgrzybek p1;
    Muchomor m1;

    m1.wyswietl();
    p1.wyswietl();

}