* FoxPro QuickSort
DIMENSION arr(6)
arr(1) = 10
arr(2) = 7
arr(3) = 8
arr(4) = 9
arr(5) = 1
arr(6) = 5

? "Original:"
FOR i = 1 TO 6
   ?? arr(i)
ENDFOR

DO QuickSort WITH 1, 6

? "Sorted:  "
FOR i = 1 TO 6
   ?? arr(i)
ENDFOR

PROCEDURE QuickSort
PARAMETERS nLeft, nRight
LOCAL i, j, pivot, temp

i = nLeft
j = nRight
pivot = arr(INT((nLeft + nRight) / 2))

DO WHILE i <= j
   DO WHILE arr(i) < pivot
      i = i + 1
   ENDDO
   DO WHILE arr(j) > pivot
      j = j - 1
   ENDDO
   
   IF i <= j
      temp = arr(i)
      arr(i) = arr(j)
      arr(j) = temp
      i = i + 1
      j = j - 1
   ENDIF
ENDDO

IF nLeft < j
   DO QuickSort WITH nLeft, j
ENDIF
IF i < nRight
   DO QuickSort WITH i, nRight
ENDIF
RETURN
