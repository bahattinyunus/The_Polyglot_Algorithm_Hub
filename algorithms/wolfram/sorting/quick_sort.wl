(* Wolfram Language Quick Sort *)
QuickSort[list_List] := 
 If[Length[list] <= 1, list,
  Module[{pivot = First[list], rest = Rest[list]},
   Join[
    QuickSort[Select[rest, # < pivot &]],
    {pivot},
    QuickSort[Select[rest, # >= pivot &]]
   ]
  ]
 ]

arr = {10, 7, 8, 9, 1, 5};
Print["Original: ", arr];
sorted = QuickSort[arr];
Print["Sorted:   ", sorted];
