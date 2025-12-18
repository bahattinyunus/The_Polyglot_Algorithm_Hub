<?hh

function quick_sort(vec<int> $arr): vec<int> {
  if (count($arr) <= 1) {
    return $arr;
  }

  $pivot = $arr[0];
  $left = vec[];
  $right = vec[];

  for ($i = 1; $i < count($arr); $i++) {
    if ($arr[$i] < $pivot) {
      $left[] = $arr[$i];
    } else {
      $right[] = $arr[$i];
    }
  }

  return Vec\concat(quick_sort($left), vec[$pivot], quick_sort($right));
}

<<__EntryPoint>>
function main(): void {
  $arr = vec[10, 7, 8, 9, 1, 5];
  echo "Original: " . implode(", ", $arr) . "\n";
  $sorted = quick_sort($arr);
  echo "Sorted: " . implode(", ", $sorted) . "\n";
}
