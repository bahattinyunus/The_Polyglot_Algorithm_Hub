// HolyC - QuickSort
// "God's Language"

U0 QuickSort(I64 *arr, I64 low, I64 high)
{
  if (low < high) {
    I64 pivot = arr[high];
    I64 i = low - 1;
    I64 j;
    for (j = low; j < high; j++) {
      if (arr[j] < pivot) {
        i++;
        SwapI64(&arr[i], &arr[j]);
      }
    }
    SwapI64(&arr[i+1], &arr[high]);
    
    QuickSort(arr, low, i);
    QuickSort(arr, i+2, high);
  }
}

U0 Main()
{
  I64 arr[6];
  arr[0]=10; arr[1]=7; arr[2]=8; arr[3]=9; arr[4]=1; arr[5]=5;
  
  "Original: ";
  I64 i;
  for (i=0; i<6; i++)
    "%d ", arr[i];
  "\n";
  
  QuickSort(arr, 0, 5);
  
  "Sorted:   ";
  for (i=0; i<6; i++)
    "%d ", arr[i];
  "\n";
}

Main;
