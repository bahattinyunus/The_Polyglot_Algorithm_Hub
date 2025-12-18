fn binary_search(arr: &[i32], target: i32) -> Option<usize> {
    let mut left = 0;
    let mut right = arr.len() - 1;

    while left <= right {
        let mid = left + (right - left) / 2;
        if arr[mid] == target {
            return Some(mid);
        } else if arr[mid] < target {
            left = mid + 1;
        } else {
            if mid == 0 {
                break;
            }
            right = mid - 1;
        }
    }
    None
}

fn main() {
    let arr = [2, 3, 4, 10, 40];
    let target = 10;
    
    match binary_search(&arr, target) {
        Some(index) => println!("Element is present at index {}", index),
        None => println!("Element is not present in array"),
    }
}
