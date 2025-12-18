import Foundation

func binarySearch<T: Comparable>(_ array: [T], key: T) -> Int? {
    var lowerBound = 0
    var upperBound = array.count
    
    while lowerBound < upperBound {
        let midIndex = lowerBound + (upperBound - lowerBound) / 2
        if array[midIndex] == key {
            return midIndex
        } else if array[midIndex] < key {
            lowerBound = midIndex + 1
        } else {
            upperBound = midIndex
        }
    }
    return nil
}

let numbers = [2, 3, 4, 10, 40]
if let index = binarySearch(numbers, key: 10) {
    print("Element found at index: \(index)")
} else {
    print("Element not found")
}
