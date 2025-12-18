List quickSort := method(
    if(size <= 1, return self)
    pivot := first
    less := slice(1) select(< pivot)
    greater := slice(1) select(>= pivot)
    less quickSort append(pivot) appendSeq(greater quickSort)
)

arr := list(10, 7, 8, 9, 1, 5)
writeln("Original: ", arr join(" "))
sorted := arr quickSort
writeln("Sorted:   ", sorted join(" "))
