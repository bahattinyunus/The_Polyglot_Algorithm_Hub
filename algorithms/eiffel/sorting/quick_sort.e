class
    QUICK_SORT

create
    make

feature
    make
        local
            arr: ARRAY [INTEGER]
        do
            create arr.make_filled (0, 1, 6)
            arr[1] := 10
            arr[2] := 7
            arr[3] := 8
            arr[4] := 9
            arr[5] := 1
            arr[6] := 5
            
            print ("Original: ")
            across arr as i loop print (i.item.out + " ") end
            print ("%N")
            
            quick_sort (arr, 1, 6)
            
            print ("Sorted:   ")
            across arr as i loop print (i.item.out + " ") end
            print ("%N")
        end

    quick_sort (a: ARRAY [INTEGER]; low, high: INTEGER)
        local
            pivot, i, j, temp: INTEGER
        do
            if low < high then
                pivot := a [high]
                i := low - 1
                from j := low until j >= high loop
                    if a [j] < pivot then
                        i := i + 1
                        temp := a [i]; a [i] := a [j]; a [j] := temp
                    end
                    j := j + 1
                end
                temp := a [i + 1]; a [i + 1] := a [high]; a [high] := temp
                
                quick_sort (a, low, i)
                quick_sort (a, i + 2, high)
            end
        end

end
