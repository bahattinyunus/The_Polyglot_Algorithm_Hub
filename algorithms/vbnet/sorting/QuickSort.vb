Module QuickSort
    Sub Main()
        Dim arr() As Integer = {10, 7, 8, 9, 1, 5}
        Console.WriteLine("Original array: " & String.Join(", ", arr))
        
        Sort(arr, 0, arr.Length - 1)
        
        Console.WriteLine("Sorted array: " & String.Join(", ", arr))
    End Sub

    Sub Sort(ByVal arr() As Integer, ByVal low As Integer, ByVal high As Integer)
        If low < high Then
            Dim pi As Integer = Partition(arr, low, high)
            Sort(arr, low, pi - 1)
            Sort(arr, pi + 1, high)
        End If
    End Sub

    Function Partition(ByVal arr() As Integer, ByVal low As Integer, ByVal high As Integer) As Integer
        Dim pivot As Integer = arr(high)
        Dim i As Integer = low - 1
        Dim temp As Integer

        For j As Integer = low To high - 1
            If arr(j) < pivot Then
                i += 1
                temp = arr(i)
                arr(i) = arr(j)
                arr(j) = temp
            End If
        Next

        temp = arr(i + 1)
        arr(i + 1) = arr(high)
        arr(high) = temp

        Return i + 1
    End Function
End Module
