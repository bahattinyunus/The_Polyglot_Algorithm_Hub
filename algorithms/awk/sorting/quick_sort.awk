#!/usr/bin/awk -f

function quick_sort(arr, left, right,   i, last, temp) {
    if (left >= right) return
    
    # Swap arr[left] and arr[int((left+right)/2)]
    temp = arr[left]
    arr[left] = arr[int((left+right)/2)]
    arr[int((left+right)/2)] = temp
    
    last = left
    for (i = left + 1; i <= right; i++) {
        if (arr[i] < arr[left]) {
            last++
            # Swap arr[last] and arr[i]
            temp = arr[last]
            arr[last] = arr[i]
            arr[i] = temp
        }
    }
    
    # Swap arr[left] and arr[last]
    temp = arr[left]
    arr[left] = arr[last]
    arr[last] = temp
    
    quick_sort(arr, left, last - 1)
    quick_sort(arr, last + 1, right)
}

BEGIN {
    data[1] = 10; data[2] = 7; data[3] = 8;
    data[4] = 9;  data[5] = 1; data[6] = 5;
    n = 6
    
    printf "Original: "
    for (i = 1; i <= n; i++) printf "%d ", data[i]
    print ""
    
    quick_sort(data, 1, n)
    
    printf "Sorted: "
    for (i = 1; i <= n; i++) printf "%d ", data[i]
    print ""
}
