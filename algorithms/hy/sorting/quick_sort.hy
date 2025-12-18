(defn quick-sort [arr]
  (if (<= (len arr) 1)
    arr
    (let [pivot (get arr 0)
          rest (slice arr 1)
          less (list-comp x [x rest] (< x pivot))
          greater (list-comp x [x rest] (>= x pivot))]
      (+ (quick-sort less) [pivot] (quick-sort greater)))))

(setv arr [10 7 8 9 1 5])
(print (+ "Original: " (str arr)))
(print (+ "Sorted:   " (str (quick-sort arr))))
