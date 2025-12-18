let rec quick_sort = function
  | [] -> []
  | pivot :: rest ->
      let left, right = List.partition (fun x -> x < pivot) rest in
      quick_sort left @ [pivot] @ quick_sort right

let () =
  let arr = [10; 7; 8; 9; 1; 5] in
  print_string "Original: ";
  List.iter (Printf.printf "%d ") arr;
  print_newline ();
  
  let sorted = quick_sort arr in
  print_string "Sorted: ";
  List.iter (Printf.printf "%d ") sorted;
  print_newline ()
