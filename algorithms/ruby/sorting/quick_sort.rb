def quick_sort(arr)
  return arr if arr.length <= 1

  pivot = arr.delete_at(rand(arr.length))
  left, right = arr.partition { |x| x < pivot }

  return *quick_sort(left), pivot, *quick_sort(right)
end

if __FILE__ == $0
  arr = [10, 7, 8, 9, 1, 5]
  puts "Original array: #{arr.inspect}"
  sorted_arr = quick_sort(arr)
  puts "Sorted array: #{sorted_arr.inspect}"
end
