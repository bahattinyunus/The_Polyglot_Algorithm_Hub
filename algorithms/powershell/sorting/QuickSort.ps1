function QuickSort {
    param([int[]]$Array)

    if ($Array.Length -le 1) {
        return $Array
    }

    $pivot = $Array[0]
    $less = @($Array[1..($Array.Length - 1)] | Where-Object { $_ -lt $pivot })
    $greater = @($Array[1..($Array.Length - 1)] | Where-Object { $_ -ge $pivot })

    return (QuickSort $less) + @($pivot) + (QuickSort $greater)
}

$arr = 10, 7, 8, 9, 1, 5
Write-Host "Original: $($arr -join ', ')"
$sorted = QuickSort $arr
Write-Host "Sorted: $($sorted -join ', ')"
