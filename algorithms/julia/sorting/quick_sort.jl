function quick_sort(arr)
    if length(arr) <= 1
        return arr
    end
    
    pivot = arr[end]
    left = filter(x -> x < pivot, arr[1:end-1])
    right = filter(x -> x >= pivot, arr[1:end-1])
    
    return vcat(quick_sort(left), pivot, quick_sort(right))
end

arr = [10, 7, 8, 9, 1, 5]
println("Original array: ", arr)
sorted_arr = quick_sort(arr)
println("Sorted array: ", sorted_arr)
