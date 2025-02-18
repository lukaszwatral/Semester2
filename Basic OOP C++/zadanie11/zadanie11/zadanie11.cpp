// zadanie11.cpp - map

#include <iostream>
#include <map>

int main()
{
    std::map<std::string, int> m1 = { std::make_pair("a", 1), std::make_pair("b", 2), std::make_pair("c", 3), std::make_pair("d", 4), std::make_pair("e", 5) }; //1
    std::map<std::string, int> m2(m1); //2
    std::map<std::string, int> m3 = m1; //3
    std::map<int, int> m4;
    for (int i = 1; i <= 10; i++) {
        m4.insert(std::make_pair(i, (110 - i))); //4
    }

    std::cout << m4[6]; //5
    std::map <int, int>::iterator it = m4.begin();

    for (auto it = m4.lower_bound(2); it != m4.upper_bound(8); ++it) { //6
        std::cout << "\n" << it->first << " " << it->second;
    }

    m4.erase(m4.lower_bound(2), m4.upper_bound(8)); //7

    swap(m1, m3); //8
    std::cout << "\n" << "\n";
    std::cout << "m1: " << "\n";
    for (auto a : m1) {
        std::cout << "\n" << a.first << " " << a.second;
    }

    std::cout << "\n" << "m3: " << "\n";
    for (auto b : m3) {
        std::cout << "\n" << b.first << " " << b.second;
    }

    auto first = m1.begin();
    auto last = m1.end();

    if (first != last) {
        ++first;
        --last;
    }

    for (auto it = first; it != last; ++it) {
        m3.insert(*it); //9
    }

    std::cout << "\n" << "\n";
    for (auto a : m3) {
        std::cout << "\n" << a.first << " " << a.second;
    }


}