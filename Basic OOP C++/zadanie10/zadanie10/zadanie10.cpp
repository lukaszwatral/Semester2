#include <iostream>
#include <list>
#include <algorithm>
#include <string>

class Person {
public:
    std::string name;
    int age;

public:
    Person(std::string n, int a) : name(n), age(a) {}

    void print() const {
        std::cout << name << " " << age << "\n";
    }

    bool compare(const Person& p1, const Person& p2) {
        if (p1.name < p2.name) {
            return true;
        }
        else if (p1.name > p2.name) {
            return false;
        }
        else {
            if (p1.age < p2.age) {
                return true;
            }
            else {
                return false;
            }
        }
    }

    bool operator < (Person p1) {
        if (name == p1.name) {
            return age < p1.age;
        }
        else return name < p1.name;
    }
};

int main() {
    std::string n;
    int a;
    std::list<Person> lista;

    for (int i = 0; i < 5; i++) {
        std::cin >> n >> a;
        lista.push_back(Person(n, a));
    }

    for (const auto& x : lista) {
        x.print();
    }

    //lista.sort(Person::compare);
    lista.sort();

  //  sort(lista.begin(), lista.end(), Person::compare);

    std::list<Person>::iterator it = lista.begin();
    std::advance(it, 4);
    lista.insert(it, Person("a", 3));

    system("cls");
    for (const auto& x : lista) {
        x.print();
    }
    
    std::cout << "\n" << &it;

    return 0;
}
