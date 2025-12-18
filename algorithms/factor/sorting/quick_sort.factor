USING: io kernel math sequences prettyprint sorting ;
IN: quicksort

: quick-sort ( seq -- seq )
    dup length 1 <= [ ] [
        unclip [
            [ < ] with partition
            [ quick-sort ] bi@
        ] dip prefix append
    ] if ;

{ 10 7 8 9 1 5 } 
"Original: " write .
"Sorted:   " write quick-sort .
