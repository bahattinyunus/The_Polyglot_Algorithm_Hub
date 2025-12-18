quick_sort <- function(arr) {
  if (length(arr) <= 1) {
    return(arr)
  }
  
  pivot <- arr[1]
  remaining <- arr[-1]
  
  left <- remaining[remaining < pivot]
  right <- remaining[remaining >= pivot]
  
  return(c(quick_sort(left), pivot, quick_sort(right)))
}

# Example usage
arr <- c(10, 7, 8, 9, 1, 5)
print(paste("Original array:", paste(arr, collapse = " ")))
sorted_arr <- quick_sort(arr)
print(paste("Sorted array:", paste(sorted_arr, collapse = " ")))
