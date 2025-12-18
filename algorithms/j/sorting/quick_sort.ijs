quicksort =: 3 : 0
 if. 1 >: #y do. y
 else.
  pivot =. {. y
  (quicksort (y < pivot) # y) , pivot , (quicksort (y > pivot) # y)
 end.
)

arr =: 10 7 8 9 1 5
echo 'Original:'
echo arr
echo 'Sorted:'
echo quicksort arr
exit ''
