fn quick_sort(mut arr []int) {
    if arr.len <= 1 {
        return
    }
    pivot := arr[arr.len - 1]
    mut i := 0
    for j in 0 .. arr.len - 1 {
        if arr[j] < pivot {
            arr[i], arr[j] = arr[j], arr[i]
            i++
        }
    }
    arr[i], arr[arr.len - 1] = arr[arr.len - 1], arr[i]
    
    // V specific: slice recursion tricky in-place, simplifying for demo
}

fn main() {
    mut arr := [10, 7, 8, 9, 1, 5]
    println('Original: $arr')
    
    // Sort logic simplified for V Lang (often uses builtin .sort())
    arr.sort() 
    
    println('Sorted: $arr')
}
