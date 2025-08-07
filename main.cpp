#include <iostream>
using namespace std;

struct node {
    int left, right;
} nodes[1000];

bool empty_node[1000];
int n;

int main() {
    cin >> n;
    for (int i = 0; i < n; i++) {
        int parent, child;
        cin >> parent >> child;
        if (!empty_node[parent]) {
            empty_node[parent] = !empty_node[parent];
            nodes[parent].left = child;
        } else {
            nodes[parent].right = child;
        }
    }
    return 0;
}
