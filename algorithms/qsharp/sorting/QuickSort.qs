namespace QuickSort {
    open Microsoft.Quantum.Convert;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;

    // Q# is for quantum circuits, not classical sorting.
    // However, it supports classical control flow on classical data.
    
    function QuickSort(arr : Int[]) : Int[] {
        if (Length(arr) <= 1) {
            return arr;
        }
        
        // Pick pivot (first element)
        let pivot = arr[0];
        let rest = arr[1 .. Length(arr) - 1];
        
        let less = Microsoft.Quantum.Arrays.Filtered(x -> x < pivot, rest);
        let greater = Microsoft.Quantum.Arrays.Filtered(x -> x >= pivot, rest);
        
        return QuickSort(less) + [pivot] + QuickSort(greater);
    }

    @EntryPoint()
    operation Main() : Unit {
        let arr = [10, 7, 8, 9, 1, 5];
        Message($"Original: {arr}");
        let sorted = QuickSort(arr);
        Message($"Sorted: {sorted}");
    }
}
