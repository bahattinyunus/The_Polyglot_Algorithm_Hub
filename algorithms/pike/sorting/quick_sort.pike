// Pike Quick Sort
array(int) quick_sort(array(int) arr) {
    if (sizeof(arr) <= 1) return arr;
    
    int pivot = arr[0];
    array(int) less = filter(arr[1..], lambda(int x) { return x < pivot; });
    array(int) greater = filter(arr[1..], lambda(int x) { return x >= pivot; });
    
    return quick_sort(less) + ({ pivot }) + quick_sort(greater);
}

int main() {
    array(int) arr = ({ 10, 7, 8, 9, 1, 5 });
    write("Original: %O\n", arr);
    write("Sorted:   %O\n", quick_sort(arr));
    return 0;
}
