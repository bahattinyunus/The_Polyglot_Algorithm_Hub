#include <Array.au3>

Local $aArray[] = [10, 7, 8, 9, 1, 5]
_ArrayDisplay($aArray, "Original")

QuickSort($aArray, 0, UBound($aArray) - 1)

_ArrayDisplay($aArray, "Sorted")

Func QuickSort(ByRef $aArray, $iStart, $iEnd)
    If $iStart >= $iEnd Then Return

    Local $vPivot = $aArray[$iStart]
    Local $iLow = $iStart + 1
    Local $iHigh = $iEnd

    While $iLow <= $iHigh
        While $iLow <= $iEnd And $aArray[$iLow] < $vPivot
            $iLow += 1
        WEnd
        While $iHigh > $iStart And $aArray[$iHigh] >= $vPivot
            $iHigh -= 1
        WEnd
        If $iLow < $iHigh Then
            Local $vTemp = $aArray[$iLow]
            $aArray[$iLow] = $aArray[$iHigh]
            $aArray[$iHigh] = $vTemp
        EndIf
    WEnd

    $aArray[$iStart] = $aArray[$iHigh]
    $aArray[$iHigh] = $vPivot

    QuickSort($aArray, $iStart, $iHigh - 1)
    QuickSort($aArray, $iHigh + 1, $iEnd)
EndFunc
