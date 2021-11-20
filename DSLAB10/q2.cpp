#include <iostream>
using namespace std;
/*
It is desired to check whether given BST Is an AVl Tree or not. Write a program to perform the desired task
*/
void checkAVL(int *arr, int n)
{
    int *left = new int[n/2];
    int *right = new int[n/2];
    int i = 0, j = 0;
    for(int k = 0; k < n; k++)
    {
        if(k%2 == 0)
        {
            left[i] = arr[k];
            i++;
        }
        else
        {
            right[j] = arr[k];
            j++;
        }
    }
    if(i == j)
    {
        checkAVL(left, n/2);
        checkAVL(right, n/2);
    }
    else
    {
        cout << "Not an AVL Tree" << endl;
    }
}
int main()
{
    int n;
    cin >> n;
    int *arr = new int[n];
    for(int i = 0; i < n; i++)
    {
        cin >> arr[i];
    }
    checkAVL(arr, n);
    return 0;
}
