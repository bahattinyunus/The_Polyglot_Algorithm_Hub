#!/bin/zsh

quicksort() {
    local -a list
    list=("$@")
    
    if (( $#list <= 1 )); then
        print "$list"
        return
    fi
    
    local pivot=${list[1]}
    local -a less greater
    
    for x in "${list[@]:1}"; do
        if (( x < pivot )); then
            less+=($x)
        else
            greater+=($x)
        fi
    done
    
    # Recursion in shell scripts creates subshells, capturing output
    # This is slow but functionally demonstrates the algorithm
    echo "$(quicksort $less) $pivot $(quicksort $greater)"
}

arr=(10 7 8 9 1 5)
echo "Original: $arr"
sorted=($(quicksort $arr))
echo "Sorted:   $sorted"
