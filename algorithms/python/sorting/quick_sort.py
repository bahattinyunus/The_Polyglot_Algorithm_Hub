def quick_sort(arr):
    """
    Python implementation of Quick Sort Algorithm.
    Time Complexity: O(n log n) average, O(n^2) worst case
    Space Complexity: O(log n)
    """
    if len(arr) <= 1:
        return arr
    else:
        pivot = arr.pop()
        greater = []
        lower = []
        
        for item in arr:
            if item > pivot:
                greater.append(item)
            else:
                lower.append(item)
        
        return quick_sort(lower) + [pivot] + quick_sort(greater)

if __name__ == "__main__":
    test_arr = [10, 7, 8, 9, 1, 5]
    print(f"Original Array: {test_arr}")
    sorted_arr = quick_sort(test_arr)
    print(f"Sorted Array: {sorted_arr}")
