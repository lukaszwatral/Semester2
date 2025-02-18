// zad8.cpp - virtual

#include <iostream>

class Czworokat {
protected:
    float a;
    float b;
    float c;
    float d;
public:
    virtual float pole() = 0; //czysto wirtualna
    Czworokat(float x = 1, float y = 1, float z = 1, float v = 1) {
        this->a = x;
        this->b = y;
        this->c = z;
        this->d = v;
    }
    void wypisz() {
        std::cout << "Dlugosci bokow czworokata: " << a << ", " << b << ", " << c << ", " << d;
    }
};

class Prostokat : public Czworokat {
public:
    Prostokat(float x, float y) :Czworokat(x, y, x, y) {};
    void wymiary(float w1, float w2) {
        this->a = w1;
        this->c = w1;
        this->b = w2;
        this->d = w2;
    }
    virtual float pole() {
        return a * b;
    }
};

class Kwadrat : public Czworokat {
public:
    Kwadrat(float x) :Czworokat(x, x, x, x) {};
    void wymiar(float w1) {
        this->a = w1;
        this->b = w1;
        this->c = w1;
        this->d = w1;
    }
    virtual float pole() {
        return a * a;
    }
};

int main()
{
    float a, b;
    Czworokat* wsk;

    std::cout << "Podaj dlugosc boku kwadratu: ";
    std::cin >> a;
    wsk = new Kwadrat(a);
    std::cout << "Pole: " << wsk->pole() << "\n";

    std::cout << "Podaj dlugosc pierwszego boku prostokata: ";
    std::cin >> a;
    std::cout << "Podaj dlugosc drugiego boku prostokata: ";
    std::cin >> b;
    wsk = new Prostokat(a, b);
    std::cout << "Pole: " << wsk->pole() << "\n";

    delete wsk;
}