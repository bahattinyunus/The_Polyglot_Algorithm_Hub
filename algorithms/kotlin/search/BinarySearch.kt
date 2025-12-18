fun binarySearch(arr: IntArray, x: Int): Int {
    var l = 0
    var r = arr.size - 1
    while (l <= r) {
        val m = l + (r - l) / 2
        if (arr[m] == x) return m
        if (arr[m] < x) l = m + 1 else r = m - 1
    }
    return -1
}

fun main() {
    val arr = intArrayOf(2, 3, 4, 10, 40)
    val x = 10
    val result = binarySearch(arr, x)
    if (result == -1) println("Element is not present in array")
    else println("Element is present at index $result")
}
