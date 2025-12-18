import Foundation

func quickSort<T: Comparable>(_ array: [T]) -> [T] {
    guard array.count > 1 else { return array }
    
    let pivot = array[array.count / 2]
    let less = array.filter { $0 < pivot }
    let equal = array.filter { $0 == pivot }
    let greater = array.filter { $0 > pivot }
    
    return quickSort(less) + equal + quickSort(greater)
}

let array = [10, 7, 8, 9, 1, 5]
print("Original array: \(array)")
let sortedArray = quickSort(array)
print("Sorted array: \(sortedArray)")
