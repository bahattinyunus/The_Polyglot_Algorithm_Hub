(defn quick-sort [coll]
  (if (empty? coll)
    coll
    (let [pivot (first coll)
          remaining (rest coll)
          smaller (filter #(< % pivot) remaining)
          bigger (filter #(>= % pivot) remaining)]
      (concat (quick-sort smaller) [pivot] (quick-sort bigger)))))

(def arr [10 7 8 9 1 5])
(println "Original array:" arr)
(println "Sorted array:" (quick-sort arr))
