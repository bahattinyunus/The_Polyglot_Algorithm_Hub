proc quickSort[T](a: var openArray[T]) =
  if a.len <= 1: return
  
  let pivot = a[a.high]
  var i = 0
  for j in 0 ..< a.high:
    if a[j] < pivot:
      swap(a[i], a[j])
      inc i
  
  swap(a[i], a[a.high])
  
  if i > 0: quickSort(a.toOpenArray(0, i - 1))
  if i < a.high: quickSort(a.toOpenArray(i + 1, a.high))

var nums = @[10, 7, 8, 9, 1, 5]
echo "Original: ", nums
quickSort(nums)
echo "Sorted: ", nums
