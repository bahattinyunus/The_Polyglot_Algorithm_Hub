class QuickSort {
    static function main() {
        var arr = [10, 7, 8, 9, 1, 5];
        trace("Original: " + arr);
        quickSort(arr, 0, arr.length - 1);
        trace("Sorted:   " + arr);
    }

    static function quickSort(arr:Array<Int>, low:Int, high:Int):Void {
        if (low < high) {
            var pi = partition(arr, low, high);
            quickSort(arr, low, pi - 1);
            quickSort(arr, pi + 1, high);
        }
    }

    static function partition(arr:Array<Int>, low:Int, high:Int):Int {
        var pivot = arr[high];
        var i = (low - 1);
        for (j in low...high) {
            if (arr[j] < pivot) {
                i++;
                var temp = arr[i];
                arr[i] = arr[j];
                arr[j] = temp;
            }
        }
        var temp = arr[i + 1];
        arr[i + 1] = arr[high];
        arr[high] = temp;
        return i + 1;
    }
}
