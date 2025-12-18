quickSort = (arr) ->
  if arr.length <= 1
    return arr
  
  pivot = arr[0]
  rest = arr.slice(1)
  
  less = (x for x in rest when x < pivot)
  greater = (x for x in rest when x >= pivot)
  
  quickSort(less).concat([pivot]).concat(quickSort(greater))

arr = [10, 7, 8, 9, 1, 5]
console.log "Original: #{arr}"
sorted = quickSort(arr)
console.log "Sorted: #{sorted}"
