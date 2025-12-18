MODULE QuickSort;
FROM InOut IMPORT WriteString, WriteInt, WriteLn;

VAR
    arr : ARRAY [0..5] OF INTEGER;
    i : INTEGER;

PROCEDURE QuickSort(VAR A : ARRAY OF INTEGER; L, R : INTEGER);
VAR
    i, j, pivot, temp : INTEGER;
BEGIN
    i := L; j := R; pivot := A[(L+R) DIV 2];
    REPEAT
        WHILE A[i] < pivot DO INC(i); END;
        WHILE A[j] > pivot DO DEC(j); END;
        IF i <= j THEN
            temp := A[i]; A[i] := A[j]; A[j] := temp;
            INC(i); DEC(j);
        END;
    UNTIL i > j;
    IF L < j THEN QuickSort(A, L, j); END;
    IF i < R THEN QuickSort(A, i, R); END;
END QuickSort;

BEGIN
    arr[0] := 10; arr[1] := 7; arr[2] := 8;
    arr[3] := 9;  arr[4] := 1; arr[5] := 5;

    WriteString("Original: ");
    FOR i := 0 TO 5 DO WriteInt(arr[i], 3); END;
    WriteLn;

    QuickSort(arr, 0, 5);

    WriteString("Sorted:   ");
    FOR i := 0 TO 5 DO WriteInt(arr[i], 3); END;
    WriteLn;
END QuickSort.
