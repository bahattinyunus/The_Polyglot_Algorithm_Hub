module QuickSort =
    let rec quickSort = function
        | [] -> []
        | pivot :: rest ->
            let smaller, larger = List.partition ((>=) pivot) rest
            quickSort smaller @ [pivot] @ quickSort larger

    [<EntryPoint>]
    let main argv =
        let arr = [10; 7; 8; 9; 1; 5]
        printfn "Original: %A" arr
        let sorted = quickSort arr
        printfn "Sorted: %A" sorted
        0
