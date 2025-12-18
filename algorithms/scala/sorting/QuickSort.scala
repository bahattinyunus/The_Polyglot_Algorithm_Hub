object QuickSort {
  def quickSort(arr: Array[Int]): Array[Int] = {
    if (arr.length <= 1) arr
    else {
      val pivot = arr(arr.length / 2)
      Array.concat(
        quickSort(arr filter (pivot >)),
        arr filter (pivot ==),
        quickSort(arr filter (pivot <))
      )
    }
  }

  def main(args: Array[String]): Unit = {
    val arr = Array(10, 7, 8, 9, 1, 5)
    println("Original array: " + arr.mkString(", "))
    val sortedArr = quickSort(arr)
    println("Sorted array: " + sortedArr.mkString(", "))
  }
}
