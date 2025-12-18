// Genie Quick Sort
init
    var arr = new array of int {10, 7, 8, 9, 1, 5}
    print "Original: %s", arr.to_string()
    
    quicksort(arr, 0, arr.length - 1)
    
    print "Sorted:   %s", arr.to_string()

def quicksort(arr:array of int, low:int, high:int)
    if low < high
        var pivot = arr[high]
        var i = low - 1
        for var j = low to high - 1
            if arr[j] < pivot
                i++
                var temp = arr[i]
                arr[i] = arr[j]
                arr[j] = temp
        
        var temp = arr[i+1]
        arr[i+1] = arr[high]
        arr[high] = temp
        
        quicksort(arr, low, i)
        quicksort(arr, i+2, high)
