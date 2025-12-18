# Nix Expression for Quick Sort
{ }:

let
  quickSort = list:
    if list == [] then []
    else
      let
        pivot = builtins.head list;
        rest = builtins.tail list;
        less = builtins.filter (x: x < pivot) rest;
        greater = builtins.filter (x: x >= pivot) rest;
      in
        (quickSort less) ++ [pivot] ++ (quickSort greater);

  arr = [ 10 7 8 9 1 5 ];
  sorted = quickSort arr;
in
{
  original = arr;
  sorted = sorted;
}
