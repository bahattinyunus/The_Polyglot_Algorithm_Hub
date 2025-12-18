const std = @import("std");

fn partition(arr: []i32, low: usize, high: usize) usize {
    const pivot = arr[high];
    var i = low;
    var j = low;
    
    while (j < high) : (j += 1) {
        if (arr[j] < pivot) {
            const temp = arr[i];
            arr[i] = arr[j];
            arr[j] = temp;
            i += 1;
        }
    }
    const temp = arr[i];
    arr[i] = arr[high];
    arr[high] = temp;
    return i;
}

fn quickSort(arr: []i32, low: usize, high: usize) void {
    if (low < high) {
        const pi = partition(arr, low, high);
        
        if (pi > 0) {
            quickSort(arr, low, pi - 1);
        }
        quickSort(arr, pi + 1, high);
    }
}

pub fn main() !void {
    var arr = [_]i32{10, 7, 8, 9, 1, 5};
    const stdout = std.io.getStdOut().writer();
    
    try stdout.print("Original: {any}\n", .{arr});
    
    quickSort(&arr, 0, arr.len - 1);
    
    try stdout.print("Sorted: {any}\n", .{arr});
}
