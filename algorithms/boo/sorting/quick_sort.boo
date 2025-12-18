import System

def QuickSort(arr as (int)):
    if len(arr) <= 1:
        return arr
    
    pivot = arr[0]
    rest = arr[1:]
    
    less = [x for x in rest if x < pivot]
    greater = [x for x in rest if x >= pivot]
    
    return QuickSort(less) + [pivot] + QuickSort(greater)

arr = (10, 7, 8, 9, 1, 5)
print "Original: ${join(arr, ' ')}"
sorted = QuickSort(arr)
print "Sorted:   ${join(sorted, ' ')}"
