function quicksort(arr)
    if #arr <= 1 then
        return arr
    end

    local pivot = arr[#arr]
    table.remove(arr, #arr)

    local left = {}
    local right = {}

    for _, v in ipairs(arr) do
        if v <= pivot then
            table.insert(left, v)
        else
            table.insert(right, v)
        end
    end

    local sorted_left = quicksort(left)
    local sorted_right = quicksort(right)

    local result = {}
    for _, v in ipairs(sorted_left) do table.insert(result, v) end
    table.insert(result, pivot)
    for _, v in ipairs(sorted_right) do table.insert(result, v) end

    return result
end

-- Example usage
local arr = {10, 7, 8, 9, 1, 5}
print("Original array: " .. table.concat(arr, ", "))
local sorted_arr = quicksort(arr)
print("Sorted array: " .. table.concat(sorted_arr, ", "))
