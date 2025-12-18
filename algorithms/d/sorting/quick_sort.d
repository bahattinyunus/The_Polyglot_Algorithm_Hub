import std.stdio;
import std.algorithm;
import std.array;

T[] quickSort(T)(T[] arr) {
    if (arr.length <= 1) return arr;
    
    auto pivot = arr[0];
    auto left = arr[1 .. $].filter!(a => a < pivot).array;
    auto right = arr[1 .. $].filter!(a => a >= pivot).array;
    
    return quickSort(left) ~ pivot ~ quickSort(right);
}

void main() {
    int[] arr = [10, 7, 8, 9, 1, 5];
    writeln("Original: ", arr);
    writeln("Sorted: ", quickSort(arr));
}
