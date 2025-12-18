# LiveScript Quick Sort
quicksort = (list) ->
    return list if list.length <= 1
    
    pivot = list.0
    rest = list[1 to *]
    
    less = [x for x in rest when x < pivot]
    greater = [x for x in rest when x >= pivot]
    
    (quicksort less) ++ [pivot] ++ (quicksort greater)

arr = [10, 7, 8, 9, 1, 5]
console.log "Original:", arr
console.log "Sorted:  ", quicksort(arr)
