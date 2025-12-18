public class QuickSort {
    public static void sort(List<Integer> arr) {
        if (arr == null || arr.isEmpty()) return;
        sort(arr, 0, arr.size() - 1);
    }

    private static void sort(List<Integer> arr, Integer low, Integer high) {
        if (low < high) {
            Integer pi = partition(arr, low, high);
            sort(arr, low, pi - 1);
            sort(arr, pi + 1, high);
        }
    }

    private static Integer partition(List<Integer> arr, Integer low, Integer high) {
        Integer pivot = arr[high];
        Integer i = (low - 1);
        
        for (Integer j = low; j < high; j++) {
            if (arr[j] < pivot) {
                i++;
                Integer temp = arr[i];
                arr[i] = arr[j];
                arr[j] = temp;
            }
        }

        Integer temp = arr[i + 1];
        arr[i + 1] = arr[high];
        arr[high] = temp;

        return i + 1;
    }
}

// Example Execution in Apex Anonymous Window:
// List<Integer> arr = new List<Integer>{10, 7, 8, 9, 1, 5};
// System.debug('Original: ' + arr);
// QuickSort.sort(arr);
// System.debug('Sorted: ' + arr);
