% QuickSort in Prolog

quicksort([], []).
quicksort([X|Tail], Sorted) :-
    partition(Tail, X, Smaller, Bigger),
    quicksort(Smaller, SortedSmaller),
    quicksort(Bigger, SortedBigger),
    append(SortedSmaller, [X|SortedBigger], Sorted).

partition([], _, [], []).
partition([X|Tail], Pivot, [X|Smaller], Bigger) :-
    X =< Pivot,
    partition(Tail, Pivot, Smaller, Bigger).
partition([X|Tail], Pivot, Smaller, [X|Bigger]) :-
    X > Pivot,
    partition(Tail, Pivot, Smaller, Bigger).
    
% usage: quicksort([10, 7, 8, 9, 1, 5], Sorted).
