/**
 * JavaScript implementation of Quick Sort Algorithm.
 * Time Complexity: O(n log n) average, O(n^2) worst case
 * Space Complexity: O(log n)
 */

function quickSort(arr) {
    if (arr.length <= 1) {
        return arr;
    }

    const pivot = arr[arr.length - 1];
    const left = [];
    const right = [];

    for (let i = 0; i < arr.length - 1; i++) {
        if (arr[i] < pivot) {
            left.push(arr[i]);
        } else {
            right.push(arr[i]);
        }
    }

    return [...quickSort(left), pivot, ...quickSort(right)];
}

// Example usage:
if (require.main === module) {
    const testArr = [10, 7, 8, 9, 1, 5];
    console.log("Original Array:", testArr);
    const sortedArr = quickSort(testArr);
    console.log("Sorted Array:", sortedArr);
}

module.exports = quickSort;
