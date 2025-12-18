import ballerina/io;

public function main() {
    int[] arr = [10, 7, 8, 9, 1, 5];
    io:println("Original: ", arr);
    int[] sorted = quickSort(arr);
    io:println("Sorted: ", sorted);
}

function quickSort(int[] arr) returns int[] {
    if (arr.length() <= 1) {
        return arr;
    }
    
    int pivot = arr[0];
    int[] less = [];
    int[] greater = [];
    
    foreach int item in arr.slice(1) {
        if (item < pivot) {
            less.push(item);
        } else {
            greater.push(item);
        }
    }
    
    int[] sortedLess = quickSort(less);
    int[] sortedGreater = quickSort(greater);
    
    int[] result = [];
    foreach int item in sortedLess { result.push(item); }
    result.push(pivot);
    foreach int item in sortedGreater { result.push(item); }
    
    return result;
}
