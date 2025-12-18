# CMake Script QuickSort
# cmake -P CMakeLists.txt

function(quick_sort input_list output_var)
    list(LENGTH ${input_list} len)
    if(len LESS_EQUAL 1)
        set(${output_var} ${${input_list}} PARENT_SCOPE)
        return()
    endif()

    list(GET ${input_list} 0 pivot)
    list(REMOVE_AT ${input_list} 0)
    
    set(less "")
    set(greater "")
    
    foreach(val IN LISTS ${input_list})
        if(val LESS pivot)
            list(APPEND less ${val})
        else()
            list(APPEND greater ${val})
        endif()
    endforeach()
    
    quick_sort(less sorted_less)
    quick_sort(greater sorted_greater)
    
    set(result ${sorted_less} ${pivot} ${sorted_greater})
    set(${output_var} ${result} PARENT_SCOPE)
endfunction()

set(arr 10 7 8 9 1 5)
message("Original: ${arr}")

quick_sort(arr sorted_arr)
message("Sorted:   ${sorted_arr}")
