#include <iostream>
#include <vector>

int main()
{
    std::vector<int> v1 = { 3, 50, 10 }; // 1
    std::cout << "1. ";
    for (auto x : v1) {
        std::cout << x << " ";
    }
    v1.insert(v1.begin(), -50); // 2
    std::cout << "\n" << "2. ";
    for (auto x : v1) {
        std::cout << x << " ";
    }
    v1.insert(v1.end(), 3, 1); // 3
    std::cout << "\n" << "3. ";
    for (auto x : v1) {
        std::cout << x << " ";
    }
    
    std::vector<int> v2 = { 1, 2, 3, 4 }; // 4

    v1.insert(v1.begin() + 1, v2.begin(), v2.end()-1); // 5
    std::cout << "\n" << "5. ";
    for (auto x : v1) {
        std::cout << x << " ";
    }

    int tab[5] = { -1, -2, -3, -4 }; // 6

    for (int i = 0; i < 5; i++) {
        v1.push_back(tab[i]); // 7
    }
    std::cout << "\n" << "7. ";
    for (auto x : v1) {
        std::cout << x << " ";
    }

    v1.erase(v1.begin() + 1, v1.end() - 1); // 8
    std::cout << "\n" << "8. ";
    for (auto x : v1) {
        std::cout << x << " ";
    }
    
    swap(v1, v2); // 9
    std::cout << "\n" << "9. ";
    for (auto x : v1) {
        std::cout << x << " ";
    }

    std::cout << "\n" << &v1[0];
    std::cout << "\n" << &v1[1];
}