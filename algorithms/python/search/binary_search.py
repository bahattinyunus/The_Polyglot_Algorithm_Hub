def binary_search(arr, target):
    """
    Python implementation of Binary Search Algorithm.
    Requires the array to be sorted.
    Time Complexity: O(log n)
    Space Complexity: O(1)
    """
    left, right = 0, len(arr) - 1
    
    while left <= right:
        mid = (left + right) // 2
        
        if arr[mid] == target:
            return mid
        elif arr[mid] < target:
            left = mid + 1
        else:
            right = mid - 1
            
    return -1

if __name__ == "__main__":
    sorted_arr = [2, 3, 4, 10, 40]
    target = 10
    
    result = binary_search(sorted_arr, target)
    
    if result != -1:
        print(f"Element is present at index {result}")
    else:
        print("Element is not present in array")
