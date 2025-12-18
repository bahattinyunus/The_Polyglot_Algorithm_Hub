to-report quicksort [lst]
  if length lst <= 1 [ report lst ]
  
  let pivot item 0 lst
  let rest but-first lst
  
  let less filter [ ? < pivot ] rest
  let greater filter [ ? >= pivot ] rest
  
  report (sentence quicksort less pivot quicksort greater)
end

to test
  let data [10 7 8 9 1 5]
  print (word "Original: " data)
  print (word "Sorted:   " quicksort data)
end
