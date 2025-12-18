10 DIM A(6)
20 A(1)=10: A(2)=7: A(3)=8: A(4)=9: A(5)=1: A(6)=5
30 PRINT "Original: ";
40 FOR I=1 TO 6: PRINT A(I);: NEXT I: PRINT
50 GOSUB 100
60 PRINT "Sorted: ";
70 FOR I=1 TO 6: PRINT A(I);: NEXT I: PRINT
80 END

100 REM Bubblesort for Basic Simplicity (Recursion hard in old BASIC)
110 FOR I=1 TO 5
120 FOR J=1 TO 5
130 IF A(J) <= A(J+1) THEN GOTO 160
140 T=A(J): A(J)=A(J+1): A(J+1)=T
160 NEXT J
170 NEXT I
180 RETURN
