package main

import "fmt"

// Partition function for QuickSort
func partition(arr []int, low, high int) ([]int, int) {
	pivot := arr[high]
	i := low
	for j := low; j < high; j++ {
		if arr[j] < pivot {
			arr[i], arr[j] = arr[j], arr[i]
			i++
		}
	}
	arr[i], arr[high] = arr[high], arr[i]
	return arr, i
}

// QuickSort function
func quickSort(arr []int, low, high int) []int {
	if low < high {
		var p int
		arr, p = partition(arr, low, high)
		arr = quickSort(arr, low, p-1)
		arr = quickSort(arr, p+1, high)
	}
	return arr
}

func main() {
	arr := []int{10, 7, 8, 9, 1, 5}
	fmt.Println("Original array:", arr)
	
	arr = quickSort(arr, 0, len(arr)-1)
	
	fmt.Println("Sorted array:", arr)
}
