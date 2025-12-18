void quick_sort (int[] arr, int left, int right) {
    if (left < right) {
        int pivot = arr[right];
        int i = left - 1;
        for (int j = left; j < right; j++) {
            if (arr[j] < pivot) {
                i++;
                int temp = arr[i];
                arr[i] = arr[j];
                arr[j] = temp;
            }
        }
        int temp = arr[i + 1];
        arr[i + 1] = arr[right];
        arr[right] = temp;
        
        int pi = i + 1;
        
        quick_sort (arr, left, pi - 1);
        quick_sort (arr, pi + 1, right);
    }
}

void main () {
    int[] arr = {10, 7, 8, 9, 1, 5};
    stdout.printf ("Original: ");
    foreach (int i in arr) { stdout.printf ("%d ", i); }
    stdout.printf ("\n");
    
    quick_sort (arr, 0, arr.length - 1);
    
    stdout.printf ("Sorted:   ");
    foreach (int i in arr) { stdout.printf ("%d ", i); }
    stdout.printf ("\n");
}
