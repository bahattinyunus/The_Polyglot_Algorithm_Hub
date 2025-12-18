module QuickSort where

quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
    let smallerSorted = quicksort [a | a <- xs, a <= x]
        biggerSorted = quicksort [a | a <- xs, a > x]
    in  smallerSorted ++ [x] ++ biggerSorted

main :: IO ()
main = do
    let arr = [10, 7, 8, 9, 1, 5]
    print "Original array:"
    print arr
    print "Sorted array:"
    print (quicksort arr)
