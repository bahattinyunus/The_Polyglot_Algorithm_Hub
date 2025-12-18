proc quick_sort {list} {
    if {[llength $list] <= 1} {
        return $list
    }
    
    set pivot [lindex $list 0]
    set less {}
    set greater {}
    
    foreach element [lrange $list 1 end] {
        if {$element <= $pivot} {
            lappend less $element
        } else {
            lappend greater $element
        }
    }
    
    return [concat [quick_sort $less] $pivot [quick_sort $greater]]
}

set arr {10 7 8 9 1 5}
puts "Original: $arr"
set sorted [quick_sort $arr]
puts "Sorted: $sorted"
