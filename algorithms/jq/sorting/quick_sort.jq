def quicksort:
  if length <= 1 then .
  else
    (.[0]) as $pivot |
    (.[1:] | map(select(. < $pivot)) | quicksort) +
    [$pivot] +
    (.[1:] | map(select(. >= $pivot)) | quicksort)
  end;

[10, 7, 8, 9, 1, 5] | quicksort
