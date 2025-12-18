function! QuickSort(list)
    if len(a:list) <= 1
        return a:list
    endif

    let pivot = a:list[0]
    let rest = a:list[1:]
    let less = filter(copy(rest), 'v:val < pivot')
    let greater = filter(copy(rest), 'v:val >= pivot')

    return QuickSort(less) + [pivot] + QuickSort(greater)
endfunction

let s:arr = [10, 7, 8, 9, 1, 5]
echo "Original: " . string(s:arr)
let s:sorted = QuickSort(s:arr)
echo "Sorted: " . string(s:sorted)
