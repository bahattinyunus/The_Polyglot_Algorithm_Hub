xquery version "3.1";

declare function local:quicksort($seq as xs:integer*) as xs:integer* {
    if (empty($seq)) then ()
    else
        let $pivot := head($seq)
        let $tail := tail($seq)
        let $smaller := $tail[. < $pivot]
        let $larger := $tail[. >= $pivot]
        return (local:quicksort($smaller), $pivot, local:quicksort($larger))
};

let $arr := (10, 7, 8, 9, 1, 5)
return
    <result>
        <original>{$arr}</original>
        <sorted>{local:quicksort($arr)}</sorted>
    </result>
