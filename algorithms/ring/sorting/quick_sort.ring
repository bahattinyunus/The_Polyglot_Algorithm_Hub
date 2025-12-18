func main
    aList = [10, 7, 8, 9, 1, 5]
    see "Original: " 
    see aList
    see nl
    
    aSorted = quicksort(aList)
    see "Sorted:   " 
    see aSorted
    see nl

func quicksort aList
    if len(aList) <= 1 return aList ok
    
    pivot = aList[1]
    less = []
    greater = []
    
    for i = 2 to len(aList)
        if aList[i] < pivot
            add(less, aList[i])
        else
            add(greater, aList[i])
        ok
    next
    
    return quicksort(less) + [pivot] + quicksort(greater)
