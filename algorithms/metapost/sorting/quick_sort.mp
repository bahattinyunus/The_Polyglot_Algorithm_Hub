% Metapost Quick Sort
numeric arr[];
arr[0] := 10; arr[1] := 7; arr[2] := 8;
arr[3] := 9;  arr[4] := 1; arr[5] := 5;

vardef quicksort(expr l, r) =
  if l < r:
    numeric pivot, i, temp;
    pivot := arr[r];
    i := l - 1;
    for j = l upto r-1:
      if arr[j] < pivot:
        i := i + 1;
        temp := arr[i]; arr[i] := arr[j]; arr[j] := temp;
      fi
    endfor
    temp := arr[i+1]; arr[i+1] := arr[r]; arr[r] := temp;
    
    quicksort(l, i);
    quicksort(i+2, r);
  fi
enddef;

message "Original:";
for k=0 upto 5: message decimal arr[k]; endfor

quicksort(0, 5);

message "Sorted:";
for k=0 upto 5: message decimal arr[k]; endfor

end
