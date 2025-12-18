var arr : array 1 .. 6 of int := init(10, 7, 8, 9, 1, 5)

procedure swap (var a, b : int)
    var t : int := a
    a := b
    b := t
end swap

procedure quickSort (var a : array 1 .. * of int, low, high : int)
    var i, j, pivot : int
    if low < high then
        pivot := a (high)
        i := low - 1
        for k : low .. high - 1
            if a (k) <= pivot then
                i := i + 1
                swap (a (i), a (k))
            end if
        end for
        swap (a (i + 1), a (high))
        
        quickSort (a, low, i)
        quickSort (a, i + 2, high)
    end if
end quickSort

put "Original: " ..
for i : 1 .. 6
    put arr (i) ..
    put " " ..
end for
put ""

quickSort (arr, 1, 6)

put "Sorted:   " ..
for i : 1 .. 6
    put arr (i) ..
    put " " ..
end for
