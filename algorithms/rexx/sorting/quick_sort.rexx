/* REXX */
arr.1 = 10; arr.2 = 7; arr.3 = 8; arr.4 = 9; arr.5 = 1; arr.6 = 5
n = 6

say "Original:"
do i = 1 to n
  call charout , arr.i || " "
end
say ""

call quicksort 1, n

say "Sorted:"
do i = 1 to n
  call charout , arr.i || " "
end
say ""
exit

quicksort: procedure expose arr.
  parse arg lo, hi
  if lo < hi then do
    pivot = arr.hi
    i = lo - 1
    do j = lo to hi - 1
      if arr.j < pivot then do
        i = i + 1
        t = arr.i; arr.i = arr.j; arr.j = t
      end
    end
    t = arr.hi; k = i + 1; arr.hi = arr.k; arr.k = t
    
    call quicksort lo, i
    call quicksort i + 2, hi
  end
  return
