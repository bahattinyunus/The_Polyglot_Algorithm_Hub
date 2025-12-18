#include <iostream>
#include <vector>
#include <algorithm>

using namespace std;

// Binary Search function
// Returns index of x if it is present in arr[], else return -1
int binarySearch(const vector<int>& arr, int l, int r, int x) {
    while (l <= r) {
        int m = l + (r - l) / 2;

        // Check if x is present at mid
        if (arr[m] == x)
            return m;

        // If x greater, ignore left half
        if (arr[m] < x)
            l = m + 1;

        // If x is smaller, ignore right half
        else
            r = m - 1;
    }

    // if we reach here, then element was not present
    return -1;
}

int main() {
    vector<int> arr = {2, 3, 4, 10, 40};
    int x = 10;
    int n = arr.size();
    
    // Ensure array is sorted for binary search
    // In this example it is already sorted
    
    int result = binarySearch(arr, 0, n - 1, x);
    
    if (result == -1)
        cout << "Element is not present in array";
    else
        cout << "Element is present at index " << result;
        
    return 0;
}
