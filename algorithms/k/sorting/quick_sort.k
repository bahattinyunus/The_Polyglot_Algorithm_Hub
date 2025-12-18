/ QuickSort in K
qs:{[x]
 $[1>#x;x;
   (qs x@&x<*x),(*x),qs x@&x>*x]}

arr: 10 7 8 9 1 5
`0:"Original: ",$arr,"\n"
`0:"Sorted:   ",$(qs arr),"\n"
\\
