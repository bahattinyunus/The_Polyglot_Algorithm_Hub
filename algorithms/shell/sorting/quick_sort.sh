#!/bin/bash

quicksort() {
    local arr=("$@")
    if [[ ${#arr[@]} -le 1 ]]; then
        echo "${arr[@]}"
    else
        local pivot=${arr[0]}
        local left=()
        local right=()
        for i in "${arr[@]:1}"; do
            if [[ $i -le $pivot ]]; then
                left+=("$i")
            else
                right+=("$i")
            fi
        done
        echo "$(quicksort "${left[@]}") $pivot $(quicksort "${right[@]}")"
    fi
}

arr=(10 7 8 9 1 5)
echo "Original array: ${arr[*]}"
sorted_arr=($(quicksort "${arr[@]}"))
echo "Sorted array: ${sorted_arr[*]}"
