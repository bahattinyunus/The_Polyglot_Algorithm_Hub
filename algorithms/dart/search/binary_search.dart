int binarySearch(List<int> list, int target) {
  int min = 0;
  int max = list.length - 1;

  while (min <= max) {
    int mid = ((min + max) / 2).floor();
    if (target == list[mid]) {
      return mid;
    } else if (target < list[mid]) {
      max = mid - 1;
    } else {
      min = mid + 1;
    }
  }
  return -1;
}

void main() {
  List<int> list = [2, 3, 4, 10, 40];
  int target = 10;
  
  int index = binarySearch(list, target);
  
  if (index != -1) {
    print('Element found at index: $index');
  } else {
    print('Element not found');
  }
}
