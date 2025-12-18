function quickSort(arr) {
    if (arr.len() <= 1) return arr;
    
    local pivot = arr[0];
    local less = [];
    local greater = [];
    
    for (local i = 1; i < arr.len(); i += 1) {
        if (arr[i] < pivot)
            less.append(arr[i]);
        else
            greater.append(arr[i]);
    }
    
    local res = quickSort(less);
    res.append(pivot);
    res.extend(quickSort(greater));
    return res;
}

local arr = [10, 7, 8, 9, 1, 5];
print("Original: ");
foreach (val in arr) print(val + " ");
print("\n");

local sorted = quickSort(arr);

print("Sorted:   ");
foreach (val in sorted) print(val + " ");
print("\n");
