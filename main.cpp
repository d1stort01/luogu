#include <iostream>
using namespace std;

struct node {
    int parent;
    int left_child, right_child;
} nodes[1000];

int n;
int x, y;
int x_depth, y_depth;
int level[1000];
int depth, width;

void dfs(int node, int lv) {
    if (!node) {
        return;
    }
    level[lv]++;
    if (lv > depth) {
        depth = lv;
    }
    if (node == x) {
        x_depth = lv;
    }
    if (node == y) {
        y_depth = lv;
    }
    dfs(nodes[node].left_child, lv + 1);
    dfs(nodes[node].right_child, lv + 1);
}


int main() {
    cin >> n;
    for (int i = 0; i < n - 1; i++) {
        int parent, child;
        cin >> parent >> child;
        if (!nodes[parent].left_child) {
            nodes[parent].left_child = child;
        } else {
            nodes[parent].right_child = child;
        }
        nodes[child].parent = parent;
    }
    cin >> x >> y;
    dfs(1, 1);
    int lv = 1;
    while (level[lv] != 0) {
        if (level[lv] > width) {
            width = level[lv];
        }
        lv++;
    }
    cout << depth << '\n' << width << '\n' << (x_depth - 1) * 2 + (y_depth - 1);
    return 0;
}
