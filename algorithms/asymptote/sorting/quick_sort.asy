// Asymptote Quick Sort
int[] arr = {10, 7, 8, 9, 1, 5};

write("Original: ", arr);

void quickSort(int[] a, int low, int high) {
    if (low < high) {
        int pivot = a[high];
        int i = (low - 1);
        for (int j = low; j < high; ++j) {
            if (a[j] < pivot) {
                ++i;
                int temp = a[i];
                a[i] = a[j];
                a[j] = temp;
            }
        }
        int temp = a[i+1];
        a[i+1] = a[high];
        a[high] = temp;
        
        quickSort(a, low, i);
        quickSort(a, i+2, high);
    }
}

quickSort(arr, 0, arr.length - 1);

write("Sorted:   ", arr);
