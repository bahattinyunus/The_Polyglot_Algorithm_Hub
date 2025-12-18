<?php

function quickSort($arr) {
    $length = count($arr);
    
    if($length <= 1){
        return $arr;
    }
    
    $pivot = $arr[0];
    $left = $right = array();
    
    for($i = 1; $i < count($arr); $i++) {
        if($arr[$i] < $pivot){
            $left[] = $arr[$i];
        }
        else{
            $right[] = $arr[$i];
        }
    }
    
    return array_merge(quickSort($left), array($pivot), quickSort($right));
}

$arr = array(10, 7, 8, 9, 1, 5);
echo "Original array: " . implode(", ", $arr) . "\n";
$sortedArg = quickSort($arr);
echo "Sorted array: " . implode(", ", $sortedArg) . "\n";

?>
