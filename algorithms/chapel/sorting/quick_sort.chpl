module QuickSort {
  config const n = 6;
  
  proc quickSort(arr: [] int, lo: int, hi: int) {
    if lo < hi {
      var pivot = arr[hi];
      var i = lo - 1;
      
      for j in lo..hi-1 {
        if arr[j] < pivot {
          i += 1;
          arr[i] <=> arr[j];
        }
      }
      arr[i+1] <=> arr[hi];
      var pi = i + 1;
      
      quickSort(arr, lo, pi - 1);
      quickSort(arr, pi + 1, hi);
    }
  }

  proc main() {
    var arr: [0..n-1] int = [10, 7, 8, 9, 1, 5];
    writeln("Original: ", arr);
    
    quickSort(arr, 0, n-1);
    
    writeln("Sorted:   ", arr);
  }
}
