"QuickSort" by Algo

The Sorting Room is a room. "A place for sorting numbers."

A number list is a list of numbers that varies.
The number list is {10, 7, 8, 9, 1, 5}.

To decide which list of numbers is (L - list of numbers) quicksorted:
    if the number of entries in L <= 1, decide on L;
    let pivot be entry 1 of L;
    let rest be L;
    remove entry 1 from rest;
    let smaller be a list of numbers;
    let larger be a list of numbers;
    repeat with N running through rest:
        if N < pivot, add N to smaller;
        else add N to larger;
    let sorted smaller be smaller quicksorted;
    let sorted larger be larger quicksorted;
    add pivot to sorted smaller;
    add sorted larger to sorted smaller;
    decide on sorted smaller.

When play begins:
    say "Original: [number list].";
    let result be number list quicksorted;
    say "Sorted:   [result].";
    end the story.
