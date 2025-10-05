#include <iostream>
#include <unordered_set>

using namespace std;

int ds[1001];
int sizes[1001];

int find(int x) {
    return ds[x] == x ? x : ds[x] = find(ds[x]);
}

void unite(int x, int y) {
    int x_root = find(x);
    int y_root = find(y);

    if (x_root == y_root) return;

    if (sizes[x_root] > sizes[y_root]) {
        swap(x_root, y_root);
    }

    ds[x_root] = y_root;
}

int main() {
    int n, m;
    while (cin >> n) {
        if (n == 0) break;
        cin >> m;
        for (int i = 1; i <= n; i++) {
            ds[i] = i;
            sizes[i] = 1;
        }
        while (m--) {
            int i, j;
            cin >> i >> j;
            unite(i, j);
        }
        unordered_set<int> s;
        for (int i = 1; i <= n; i++) {
            s.insert(find(i));    
        }
        cout << s.size() - 1 << '\n';
    }    
    return 0;
}
