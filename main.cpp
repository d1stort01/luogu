#include <iostream>
using namespace std;

constexpr int null = 0;

int m, n;
int height[11];
int img_height;

char img[2048][2048];

struct Node {
    bool valid;
    int left, right;
} nodes[2048];

void build(int node, int lv) {
    if (lv > m) {
        return;
    }
    nodes[node].valid = true;
    nodes[node].left = node << 1;
    nodes[node].right = node << 1 | 1;
    build(node << 1, lv + 1);
    build(node << 1 | 1, lv + 1);
}

void print(int node, int lv, int x, int y) {
    img[x][y] = 'o';
    if (nodes[nodes[node].left].valid) {
        int lx = x + 1, ly = y - 1;
        for (int i = 0; i < height[lv + 1] - 1; i++) {
            if (ly < 0) {
                cout << "error!" << endl;
                return;
            }
            img[lx][ly] = '/';
            lx++;
            ly--;
        }
        print(nodes[node].left, lv + 1, lx, ly);
    }
    if (nodes[nodes[node].right].valid) {
        int rx = x + 1, ry = y + 1;
        for (int i = 0; i < height[lv + 1] - 1; i++) {
            img[rx][ry] = '\\';
            rx++;
            ry++;
        }
        print(nodes[node].right, lv + 1, rx, ry);
    }
}

void init(int size) {
    for (int i = 0; i < size; i++) {
        for (int j = 0; j < size * 2; j++) {
            img[i][j] = 32;
        }
    }
}


int main() {
    cin >> m >> n;
    build(1, 1);
    height[m] = 2;
    height[m - 1] = 3;
    for (int i = m - 2; i >= 1; i--) {
        height[i] = height[i + 1] * 2;
    }
    img_height = height[1];
    for (int i = 0; i < n; i++) {
        int lv, num;
        cin >> lv >> num;
        nodes[(1 << (lv - 1)) + num - 1].valid = false;
    }
    init(img_height);
    print(1, 1, 0, height[1] - 1);
    for (int i = 0; i < img_height; i++) {
        cout << img[i] << '\n';
    }
    return 0;
}
