class QuickSort {
  static sort(list) {
    if (list.count <= 1) return list
    
    var pivot = list[0]
    var less = []
    var greater = []
    
    for (i in 1...list.count) {
      if (list[i] < pivot) {
        less.add(list[i])
      } else {
        greater.add(list[i])
      }
    }
    
    return sort(less) + [pivot] + sort(greater)
  }
}

var arr = [10, 7, 8, 9, 1, 5]
System.print("Original: %(arr)")
var sorted = QuickSort.sort(arr)
System.print("Sorted:   %(sorted)")
