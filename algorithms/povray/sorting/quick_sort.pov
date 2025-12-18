// POV-Ray Quick Sort
#version 3.7;

#declare Arr = array[6] {10, 7, 8, 9, 1, 5};

#macro QuickSort(A, L, R)
    #if (L < R)
        #local Pivot = A[R];
        #local I = L - 1;
        #local J = L;
        #while (J < R)
            #if (A[J] < Pivot)
                #local I = I + 1;
                #local Temp = A[I];
                #declare A[I] = A[J];
                #declare A[J] = Temp;
            #end
            #local J = J + 1;
        #end
        #local Temp = A[I+1];
        #declare A[I+1] = A[R];
        #declare A[R] = Temp;
        
        QuickSort(A, L, I)
        QuickSort(A, I+2, R)
    #end
#end

#debug concat("Original: ", str(Arr[0],0,0), " ", str(Arr[1],0,0), " ", str(Arr[2],0,0), " ", str(Arr[3],0,0), " ", str(Arr[4],0,0), " ", str(Arr[5],0,0), "\n")

QuickSort(Arr, 0, 5)

#debug concat("Sorted:   ", str(Arr[0],0,0), " ", str(Arr[1],0,0), " ", str(Arr[2],0,0), " ", str(Arr[3],0,0), " ", str(Arr[4],0,0), " ", str(Arr[5],0,0), "\n")
