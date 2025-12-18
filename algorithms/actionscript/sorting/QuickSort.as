package {
    import flash.display.Sprite;
    
    public class QuickSort extends Sprite {
        public function QuickSort() {
            var arr:Array = [10, 7, 8, 9, 1, 5];
            trace("Original: " + arr);
            quickSort(arr, 0, arr.length - 1);
            trace("Sorted: " + arr);
        }

        private function quickSort(arr:Array, left:int, right:int):void {
            var i:int = left;
            var j:int = right;
            var pivot:int = arr[(left + right) >> 1];

            while (i <= j) {
                while (arr[i] < pivot) i++;
                while (arr[j] > pivot) j--;
                if (i <= j) {
                    var temp:int = arr[i];
                    arr[i] = arr[j];
                    arr[j] = temp;
                    i++;
                    j--;
                }
            }

            if (left < j) quickSort(arr, left, j);
            if (i < right) quickSort(arr, i, right);
        }
    }
}
