-module(quick_sort).
-export([qsort/1, start/0]).

qsort([]) -> [];
qsort([Pivot|Rest]) ->
    {Smaller, Larger} = partition(Pivot, Rest, [], []),
    qsort(Smaller) ++ [Pivot] ++ qsort(Larger).

partition(_, [], Smaller, Larger) -> {Smaller, Larger};
partition(Pivot, [H|T], Smaller, Larger) ->
    if H =< Pivot -> partition(Pivot, T, [H|Smaller], Larger);
       H >  Pivot -> partition(Pivot, T, Smaller, [H|Larger])
    end.

start() ->
    List = [10, 7, 8, 9, 1, 5],
    io:format("Original: ~p~n", [List]),
    Sorted = qsort(List),
    io:format("Sorted: ~p~n", [Sorted]).
