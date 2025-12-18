fun quick_sort [] = []
  | quick_sort (pivot::rest) =
    let
        val left = List.filter (fn x => x < pivot) rest
        val right = List.filter (fn x => x >= pivot) rest
    in
        quick_sort left @ [pivot] @ quick_sort right
    end;

val arr = [10, 7, 8, 9, 1, 5];
val sorted = quick_sort arr;
