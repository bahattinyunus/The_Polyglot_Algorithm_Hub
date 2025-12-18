arr := [10, 7, 8, 9, 1, 5]
s := ""
for index, value in arr
    s .= value . " "
MsgBox, Original: %s%

QuickSort(arr, 1, arr.Length())

s := ""
for index, value in arr
    s .= value . " "
MsgBox, Sorted: %s%
ExitApp

QuickSort(ByRef arr, left, right) {
    if (left < right) {
        pi := Partition(arr, left, right)
        QuickSort(arr, left, pi - 1)
        QuickSort(arr, pi + 1, right)
    }
}

Partition(ByRef arr, left, right) {
    pivot := arr[right]
    i := left - 1
    loop, % right - left {
        j := left + A_Index - 1
        if (arr[j] < pivot) {
            i++
            temp := arr[i]
            arr[i] := arr[j]
            arr[j] := temp
        }
    }
    temp := arr[i + 1]
    arr[i + 1] := arr[right]
    arr[right] := temp
    return i + 1
}
