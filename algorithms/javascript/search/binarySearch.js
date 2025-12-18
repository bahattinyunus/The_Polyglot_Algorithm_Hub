/**
 * JavaScript implementation of Binary Search Algorithm.
 * Requires the array to be sorted.
 * Time Complexity: O(log n)
 * Space Complexity: O(1)
 */

function binarySearch(arr, target) {
    let left = 0;
    let right = arr.length - 1;

    while (left <= right) {
        let mid = Math.floor((left + right) / 2);

        if (arr[mid] === target) {
            return mid;
        }

        if (arr[mid] < target) {
            left = mid + 1;
        } else {
            right = mid - 1;
        }
    }

    return -1;
}

// Example usage:
if (require.main === module) {
    const sortedArr = [2, 3, 4, 10, 40];
    const target = 10;

    const result = binarySearch(sortedArr, target);

    if (result !== -1) {
        console.log(`Element is present at index ${result}`);
    } else {
        console.log("Element is not present in array");
    }
}

module.exports = binarySearch;
