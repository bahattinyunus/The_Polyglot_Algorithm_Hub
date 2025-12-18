"Self Quick Sort"
(|
    quickSort = (| pivot. less. greater. |
        size <= 1 ifTrue: [ ^ self ].
        pivot: first.
        less: (copyFrom: 1) filter: [ | :x | x < pivot ].
        greater: (copyFrom: 1) filter: [ | :x | x >= pivot ].
        (less quickSort) , (vector copyAddLast: pivot) , (greater quickSort)
    ).
|)

"Usage conceptual, Self requires an environment"
