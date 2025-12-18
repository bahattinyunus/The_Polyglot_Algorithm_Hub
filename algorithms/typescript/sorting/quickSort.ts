/**
 * TypeScript implementation of Quick Sort Algorithm.
 * Time Complexity: O(n log n) average, O(n^2) worst case
 * Space Complexity: O(log n)
 */

function quickSort<T>(arr: T[]): T[] {
    if (arr.length <= 1) {
        return arr;
    }

    const pivot = arr[arr.length - 1];
    const left: T[] = [];
    const right: T[] = [];

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
const testArr: number[] = [10, 7, 8, 9, 1, 5];
console.log("Original Array:", testArr);
const sortedArr: number[] = quickSort(testArr);
console.log("Sorted Array:", sortedArr);

export default quickSort;
