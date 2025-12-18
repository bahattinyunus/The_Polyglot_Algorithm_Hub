/* B Language Quick Sort */
main() {
    auto arr[6];
    arr[0] = 10; arr[1] = 7; arr[2] = 8;
    arr[3] = 9;  arr[4] = 1; arr[5] = 5;

    printf("Original: %d %d %d %d %d %d*n", arr[0], arr[1], arr[2], arr[3], arr[4], arr[5]);
    
    quicksort(arr, 0, 5);
    
    printf("Sorted:   %d %d %d %d %d %d*n", arr[0], arr[1], arr[2], arr[3], arr[4], arr[5]);
}

quicksort(arr, low, high) {
    auto pivot, i, j, temp;
    if (low < high) {
        pivot = arr[high];
        i = low - 1;
        j = low;
        while (j < high) {
            if (arr[j] < pivot) {
                i = i + 1;
                temp = arr[i];
                arr[i] = arr[j];
                arr[j] = temp;
            }
            j = j + 1;
        }
        temp = arr[i + 1];
        arr[i + 1] = arr[high];
        arr[high] = temp;
        
        quicksort(arr, low, i);
        quicksort(arr, i + 2, high);
    }
}
