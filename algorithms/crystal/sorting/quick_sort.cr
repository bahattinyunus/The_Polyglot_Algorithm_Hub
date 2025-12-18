def quick_sort(arr : Array(Int32)) : Array(Int32)
  return arr if arr.size <= 1
  
  pivot = arr.first
  left = arr[1..-1].select { |x| x < pivot }
  right = arr[1..-1].select { |x| x >= pivot }
  
  quick_sort(left) + [pivot] + quick_sort(right)
end

arr = [10, 7, 8, 9, 1, 5]
puts "Original: #{arr}"
puts "Sorted: #{quick_sort(arr)}"
