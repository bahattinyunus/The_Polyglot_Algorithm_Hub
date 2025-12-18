(
// SuperCollider Quick Sort
~quickSort = { |array|
    if(array.size <= 1, {
        array
    }, {
        var pivot = array[0];
        var less = array[1..].select({ |item| item < pivot });
        var greater = array[1..].select({ |item| item >= pivot });
        ~quickSort.value(less) ++ [pivot] ++ ~quickSort.value(greater)
    })
};

~data = [10, 7, 8, 9, 1, 5];
"Original: ".post; ~data.postln;
"Sorted:   ".post; ~quickSort.value(~data).postln;
)
