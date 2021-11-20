#include <iostream>
using namespace std;
struct node {
    int data;
    node *left;
    node *right;
};
/*
Write a program to insert 10,20,30, 40, 50, 60, 70, 75, 80 in the given sequence in a Binary Search Tree. Given the root node
as an aroument. Write a function recursive/non recursive to return height of the tree. 
*/
int insert(node *root, int data) {
    if (root == NULL) {
        node *newNode = new node;
        newNode->data = data;
        newNode->left = NULL;
        newNode->right = NULL;
        return 1;
    }
    if (data < root->data) {
        root->left = insert(root->left, data);
    } else {
        root->right = insert(root->right, data);
    }
    return 0;
}

int height(node *root) {
    if (root == NULL) {
        return 0;
    }
    int lheight = height(root->left);
    int rheight = height(root->right);
    if (lheight > rheight) {
        return lheight + 1;
    } else {
        return rheight + 1;
    }
}

/*
Write a Program to Insert Binary Search Tree nodes . In a balanced Binary Search Tree, Call above written function in to find height of this balanced Iree.
*/
int main() {
    node *root = NULL;
    insert(root, 10);
    insert(root, 20);
    insert(root, 30);
    insert(root, 40);
    insert(root, 50);
    insert(root, 60);
    insert(root, 70);
    insert(root, 75);
    insert(root, 80);
    cout << height(root);
    return 0;
}


