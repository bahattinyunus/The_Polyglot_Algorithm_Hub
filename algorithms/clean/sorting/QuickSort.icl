module QuickSort
import StdEnv

qsort :: [Int] -> [Int]
qsort [] = []
qsort [x:xs] = qsort [y \\ y <- xs | y < x] ++ [x] ++ qsort [y \\ y <- xs | y >= x]

Start = qsort [10, 7, 8, 9, 1, 5]
