module QuickSort exposing (main)

import Html exposing (text)

quickSort : List number -> List number
quickSort list =
    case list of
        [] ->
            []

        pivot :: rest ->
            let
                smaller = List.filter (\x -> x < pivot) rest
                larger = List.filter (\x -> x >= pivot) rest
            in
            quickSort smaller ++ [ pivot ] ++ quickSort larger

main =
    let
        unsorted = [ 10, 7, 8, 9, 1, 5 ]
        sorted = quickSort unsorted
    in
    text (Debug.toString sorted)
