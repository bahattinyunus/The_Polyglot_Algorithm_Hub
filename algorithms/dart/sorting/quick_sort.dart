void quickSort(List<int> list, int left, int right) {
  if (left < right) {
    int pivotIndex = partition(list, left, right);
    quickSort(list, left, pivotIndex - 1);
    quickSort(list, pivotIndex + 1, right);
  }
}

int partition(List<int> list, int left, int right) {
  int pivot = list[right];
  int i = left - 1;

  for (int j = left; j < right; j++) {
    if (list[j] < pivot) {
      i++;
      int temp = list[i];
      list[i] = list[j];
      list[j] = temp;
    }
  }

  int temp = list[i + 1];
  list[i + 1] = list[right];
  list[right] = temp;

  return i + 1;
}

void main() {
  List<int> list = [10, 7, 8, 9, 1, 5];
  print('Original array: $list');
  
  quickSort(list, 0, list.length - 1);
  
  print('Sorted array: $list');
}
