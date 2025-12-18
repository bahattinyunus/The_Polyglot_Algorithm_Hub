QSORT
    ; MUMPS QuickSort
    NEW ARR
    SET ARR(1)=10, ARR(2)=7, ARR(3)=8, ARR(4)=9, ARR(5)=1, ARR(6)=5
    
    WRITE "Original: "
    FOR I=1:1:6 WRITE ARR(I)," "
    WRITE !
    
    DO QUICK(.ARR, 1, 6)
    
    WRITE "Sorted:   "
    FOR I=1:1:6 WRITE ARR(I)," "
    WRITE !
    QUIT

QUICK(A, LEFT, RIGHT)
    NEW I,J,PIVOT,TEMP
    IF LEFT'<RIGHT QUIT
    SET PIVOT=A(RIGHT)
    SET I=LEFT-1
    FOR J=LEFT:1:RIGHT-1 DO
    . IF A(J)<PIVOT DO
    . . SET I=I+1
    . . SET TEMP=A(I), A(I)=A(J), A(J)=TEMP
    SET TEMP=A(I+1), A(I+1)=A(RIGHT), A(RIGHT)=TEMP
    
    DO QUICK(.A, LEFT, I)
    DO QUICK(.A, I+2, RIGHT)
    QUIT
