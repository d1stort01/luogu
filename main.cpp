#include <iostream>
using namespace std;

struct Node {
    bool valid;
} nodes[1 << 11];

int m, n;

void trav(int n, int lv, bool b) {
    if (lv > m) {
        nodes[n].valid = false;
        return;
    }
    nodes[n].valid = b;
    trav(n << 1, lv + 1, b);
    trav((n << 1) + 1, lv + 1, b);
}

int main() {
    cin >> m >> n;

    trav(1, 1, true);

    for (int i = 0; i < n; i++) {
        int p, q;
        cin >> p >> q;
        trav((1 << (p - 1)) + q - 1, q, false);
    }
    for (int i = 0; i < m; i++) {
        for (int j = 0; j < (1 << i); j++) {
            cout << nodes[(1 << i) + j].valid << " ";
        }
        cout << '\n';
    }

    return 0;
}
