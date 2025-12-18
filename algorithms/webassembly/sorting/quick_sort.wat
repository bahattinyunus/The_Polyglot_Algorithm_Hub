(module
  (memory $0 1)
  (export "memory" (memory $0))
  (func $partition (param $arr i32) (param $low i32) (param $high i32) (result i32)
    (local $pivot i32)
    (local $i i32)
    (local $j i32)
    (local $temp i32)
    
    ;; Pivot is at arr[high] (assuming i32 array, so offset by *4)
    (local.set $pivot (i32.load (i32.add (local.get $arr) (i32.mul (local.get $high) (i32.const 4)))))
    
    (local.set $i (i32.sub (local.get $low) (i32.const 1)))
    (local.set $j (local.get $low))
    
    (block $break
      (loop $loop
        (br_if $break (i32.ge_s (local.get $j) (local.get $high)))
        
        ;; if arr[j] < pivot
        (if (i32.lt_s (i32.load (i32.add (local.get $arr) (i32.mul (local.get $j) (i32.const 4)))) (local.get $pivot))
          (then
             (local.set $i (i32.add (local.get $i) (i32.const 1)))
             ;; swap arr[i], arr[j]
             (local.set $temp (i32.load (i32.add (local.get $arr) (i32.mul (local.get $i) (i32.const 4)))))
             (i32.store (i32.add (local.get $arr) (i32.mul (local.get $i) (i32.const 4))) (i32.load (i32.add (local.get $arr) (i32.mul (local.get $j) (i32.const 4)))))
             (i32.store (i32.add (local.get $arr) (i32.mul (local.get $j) (i32.const 4))) (local.get $temp))
          )
        )
        (local.set $j (i32.add (local.get $j) (i32.const 1)))
        (br $loop)
      )
    )
    
    ;; Swap arr[i+1] and arr[high]
    (local.set $i (i32.add (local.get $i) (i32.const 1)))
    (local.set $temp (i32.load (i32.add (local.get $arr) (i32.mul (local.get $i) (i32.const 4)))))
    (i32.store (i32.add (local.get $arr) (i32.mul (local.get $i) (i32.const 4))) (i32.load (i32.add (local.get $arr) (i32.mul (local.get $high) (i32.const 4)))))
    (i32.store (i32.add (local.get $arr) (i32.mul (local.get $high) (i32.const 4))) (local.get $temp))
    
    (local.get $i)
  )
  
  (func $quicksort (export "quicksort") (param $arr i32) (param $low i32) (param $high i32)
    (local $pi i32)
    (if (i32.lt_s (local.get $low) (local.get $high))
      (then
        (local.set $pi (call $partition (local.get $arr) (local.get $low) (local.get $high)))
        (call $quicksort (local.get $arr) (local.get $low) (i32.sub (local.get $pi) (i32.const 1)))
        (call $quicksort (local.get $arr) (i32.add (local.get $pi) (i32.const 1)) (local.get $high))
      )
    )
  )
)
