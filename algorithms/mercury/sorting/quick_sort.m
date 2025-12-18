:- module quick_sort.
:- interface.
:- import_module io.
:- pred main(io::di, io::uo) is det.

:- implementation.
:- import_module list, int, string.

main(!IO) :-
    Arr = [10, 7, 8, 9, 1, 5],
    io.print("Original: ", !IO),
    io.print(Arr, !IO),
    io.nl(!IO),
    Sorted = qsort(Arr),
    io.print("Sorted:   ", !IO),
    io.print(Sorted, !IO),
    io.nl(!IO).

:- func qsort(list(int)) = list(int).
qsort([]) = [].
qsort([Pivot | Rest]) =
    qsort(filter((func(X) = (if X < Pivot then yes else no)), Rest)) ++
    [Pivot] ++
    qsort(filter((func(X) = (if X >= Pivot then yes else no)), Rest)).
