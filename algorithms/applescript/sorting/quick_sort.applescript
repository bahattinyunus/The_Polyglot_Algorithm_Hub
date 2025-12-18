on quickSort(theList)
	if (count of theList) is less than 2 then
		return theList
	end if
	
	set pivot to item 1 of theList
	set restList to rest of theList
	set less to {}
	set greater to {}
	
	repeat with i in restList
		if i < pivot then
			set end of less to i
		else
			set end of greater to i
		end if
	end repeat
	
	return quickSort(less) & pivot & quickSort(greater)
end quickSort

set arr to {10, 7, 8, 9, 1, 5}
log "Original: " & arr
set sorted to quickSort(arr)
log "Sorted: " & sorted
