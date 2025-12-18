module QuickSort

quicksort : Ord a => List a -> List a
quicksort [] = []
quicksort (x :: xs) =
    let smallerSorted = quicksort (filter (< x) xs)
        biggerSorted  = quicksort (filter (>= x) xs)
    in smallerSorted ++ [x] ++ biggerSorted

main : IO ()
main = do
    let arr = [10, 7, 8, 9, 1, 5]
    putStrLn ("Original: " ++ show arr)
    putStrLn ("Sorted: " ++ show (quicksort arr))
