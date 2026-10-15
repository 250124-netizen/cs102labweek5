#include <iostream>
using namespace std;

int main() {
    int numBottles, numExchange;
    cin >> numBottles >> numExchange;

    int total_drunk = numBottles;
    int empty = numBottles;

    while (empty >= numExchange) {
        int new_full = empty / numExchange;
        int rem_empty = empty % numExchange;

        total_drunk += new_full;
        empty = new_full + rem_empty;
    }

    cout << total_drunk << endl;
    return 0;
}
