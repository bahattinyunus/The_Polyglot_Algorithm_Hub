# Gnuplot Quick Sort (Scripting)
# To run: gnuplot quick_sort.gp

array arr[6] = [10, 7, 8, 9, 1, 5]
print "Original: ", arr[1], arr[2], arr[3], arr[4], arr[5], arr[6]

# Bubble sort implementation because Gnuplot recursion is limited/tricky for arrays
do for [i=1:6] {
    do for [j=1:5] {
        if (arr[j] > arr[j+1]) {
            temp = arr[j]
            arr[j] = arr[j+1]
            arr[j+1] = temp
        }
    }
}

print "Sorted:   ", arr[1], arr[2], arr[3], arr[4], arr[5], arr[6]
