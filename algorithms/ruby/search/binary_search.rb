def binary_search(arr, target)
  low = 0
  high = arr.length - 1

  while low <= high
    mid = (low + high) / 2
    if arr[mid] == target
      return mid
    elsif arr[mid] < target
      low = mid + 1
    else
      high = mid - 1
    end
  end

  return -1
end

if __FILE__ == $0
  arr = [2, 3, 4, 10, 40]
  target = 10
  result = binary_search(arr, target)

  if result != -1
    puts "Element is present at index #{result}"
  else
    puts "Element is not present in array"
  end
end
