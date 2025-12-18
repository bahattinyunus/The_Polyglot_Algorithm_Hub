// OpenSCAD Quick Sort
// Sorting a list of numbers visually (rendering bars)
// OpenSCAD is functional, lists are immutable.

function quicksort(list) = 
    len(list) <= 1 ? list :
    let (
        pivot = list[0],
        rest = [for (i = [1 : len(list)-1]) list[i]],
        less = [for (x = rest) if (x < pivot) x],
        greater = [for (x = rest) if (x >= pivot) x]
    )
    concat(quicksort(less), [pivot], quicksort(greater));

data = [10, 7, 8, 9, 1, 5];
sorted = quicksort(data);

echo("Original:", data);
echo("Sorted:", sorted);

// Visualize
for (i = [0 : len(sorted)-1]) {
    translate([i * 12, 0, 0])
    cube([10, sorted[i] * 5, 10]);
}
