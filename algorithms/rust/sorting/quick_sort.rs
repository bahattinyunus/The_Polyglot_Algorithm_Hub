fn quick_sort<T: Ord>(arr: &mut [T]) {
    let len = arr.len();
    if len > 1 {
        let pivot_index = partition(arr);
        quick_sort(&mut arr[0..pivot_index]);
        quick_sort(&mut arr[pivot_index + 1..len]);
    }
}

fn partition<T: Ord>(arr: &mut [T]) -> usize {
    let len = arr.len();
    let pivot_index = len - 1;
    let mut i = 0;
    for j in 0..len - 1 {
        if arr[j] <= arr[pivot_index] {
            arr.swap(i, j);
            i += 1;
        }
    }
    arr.swap(i, pivot_index);
    i
}

fn main() {
    let mut arr = [10, 7, 8, 9, 1, 5];
    println!("Original array: {:?}", arr);
    quick_sort(&mut arr);
    println!("Sorted array: {:?}", arr);
}
