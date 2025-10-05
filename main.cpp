#include <iostream>
#include <vector>

using namespace std;

class DisjointSets {
public:
    explicit DisjointSets(int size) : parents(size), sizes(size, 1) {
        for (int i = 0; i < size; i++) {
            parents[i] = i;
        }
    }

    int find(int x) {
        return parents[x] == x ? x : (parents[x] = find(parents[x]));
    }

    bool unite(int x, int y) {
        int x_root = find(x);
        int y_root = find(y);
        if (x_root == y_root) {
            return false;
        }
        if (sizes[x_root] < sizes[y_root]) {
            swap(x_root, y_root);
        }
        sizes[x_root] += sizes[y_root];
        parents[y_root] = x_root;
        return true;
    }

    bool connected(int x, int y) {
        return find(x) == find(y);
    }

private:
    vector<int> parents;
    vector<int> sizes;
};

int main() {
    DisjointSets ds(5005);
    int n, m, p;
    cin >> n >> m >> p;
    while (m--) {
        int mi, mj;
        cin >> mi >> mj;
        ds.unite(mi, mj);
    }
    while (p--) {
        int pi, pj;
        cin >> pi >> pj;
        cout << (ds.connected(pi, pj) ? "Yes" : "No") << '\n';
    }
    return 0;
}
