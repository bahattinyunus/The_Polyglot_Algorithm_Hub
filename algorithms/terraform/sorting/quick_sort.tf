# Terraform (HCL) is declarative and not meant for sorting algorithms.
# However, we can use `locals` and nested loops/functions to simulate logic.
# This simulates the *result* of a Quick Sort for demonstration.

locals {
  original_arr = [10, 7, 8, 9, 1, 5]
  
  # Terraform's sort() function is lexicographical for strings, numeric for numbers.
  # We use the built-in function to demonstrate infrastructure data sorting.
  sorted_arr = sort(local.original_arr)
}

output "original" {
  value = local.original_arr
}

output "sorted_result" {
  value = local.sorted_arr
  description = "Sorted using Terraform built-in sort (QuickSort under the hood of Go)"
}
