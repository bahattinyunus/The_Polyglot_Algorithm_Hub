program quick_sort
    implicit none
    integer, allocatable :: arr(:)
    integer :: i
    
    arr = [10, 7, 8, 9, 1, 5]
    print *, "Original array:", arr
    
    call qsort(arr)
    
    print *, "Sorted array:", arr

contains

    recursive subroutine qsort(a)
        integer, intent(inout) :: a(:)
        integer :: i, pivot, temp, last
        
        if (size(a) <= 1) return
        
        ! Pivot is the first element
        pivot = a(1)
        last = 1
        
        do i = 2, size(a)
            if (a(i) < pivot) then
                last = last + 1
                ! swap
                temp = a(last)
                a(last) = a(i)
                a(i) = temp
            end if
        end do
        
        ! swap pivot to correct position
        temp = a(1)
        a(1) = a(last)
        a(last) = temp
        
        call qsort(a(1:last-1))
        call qsort(a(last+1:size(a)))
        
    end subroutine qsort

end program quick_sort
