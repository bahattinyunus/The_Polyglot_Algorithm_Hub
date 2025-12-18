SequenceableCollection extend [
    quickSort [
        ^ self quickSort: [ :a :b | a < b ]
    ]

    quickSort: sortBlock [
        | pivot left right |
        self isEmpty ifTrue: [ ^ self ].
        
        pivot := self first.
        left := self allButFirst select: [ :each | sortBlock value: each value: pivot ].
        right := self allButFirst reject: [ :each | sortBlock value: each value: pivot ].
        
        ^ (left quickSort: sortBlock), (Array with: pivot), (right quickSort: sortBlock)
    ]
]

"Example Usage:"
| arr sorted |
arr := #(10 7 8 9 1 5).
Transcript show: 'Original: ', arr printString; cr.
sorted := arr quickSort.
Transcript show: 'Sorted: ', sorted printString; cr.
