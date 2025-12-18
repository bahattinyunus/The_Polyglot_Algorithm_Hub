<?php

function binarySearch($arr, $x) {
    if (count($arr) === 0) return false;
    $low = 0;
    $high = count($arr) - 1;
     
    while ($low <= $high) {
         
        // compute middle index
        $mid = floor(($low + $high) / 2);
 
        // element found at mid
        if($arr[$mid] == $x) {
            return $mid;
        }
 
        if ($x < $arr[$mid]) {
            // search the left side of the array
            $high = $mid -1;
        }
        else {
            // search the right side of the array
            $low = $mid + 1;
        }
    }
     
    // If we reach here element is x not in array
    return -1;
}
 
$arr = array(2, 3, 4, 10, 40);
$value = 10;
$result = binarySearch($arr, $value);
if($result == -1)
    echo "Element is not present in array";
else
    echo "Element is present at index " . $result;

?>
