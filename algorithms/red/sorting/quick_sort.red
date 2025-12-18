Red [
    Title: "Quick Sort"
]

quick-sort: func [
    arr [block!]
][
    if tail? next arr [return arr]
    
    pivot: first arr
    rest: next arr
    
    rejoin [
        quick-sort head remove-each x copy rest [x >= pivot]
        reduce [pivot]
        quick-sort head remove-each x copy rest [x < pivot]
    ]
]

arr: [10 7 8 9 1 5]
print ["Original:" mold arr]
print ["Sorted:  " mold quick-sort arr]
