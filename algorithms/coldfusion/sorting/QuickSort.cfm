<cfscript>
function quickSort(arr) {
    if (arrayLen(arr) <= 1) {
        return arr;
    }

    var pivot = arr[1];
    var less = [];
    var greater = [];

    for (var i = 2; i <= arrayLen(arr); i++) {
        if (arr[i] < pivot) {
            arrayAppend(less, arr[i]);
        } else {
            arrayAppend(greater, arr[i]);
        }
    }

    var sortedLess = quickSort(less);
    var sortedGreater = quickSort(greater);
    
    arrayAppend(sortedLess, pivot);
    
    for (var item in sortedGreater) {
        arrayAppend(sortedLess, item);
    }

    return sortedLess;
}

arr = [10, 7, 8, 9, 1, 5];
writeOutput("Original: " & arrayToList(arr, ", ") & "<br>");
sorted = quickSort(arr);
writeOutput("Sorted: " & arrayToList(sorted, ", "));
</cfscript>
