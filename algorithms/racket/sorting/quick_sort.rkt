#lang racket

(define (quick-sort lst)
  (cond
    [(empty? lst) '()]
    [else
     (let ([pivot (first lst)]
           [rest (rest lst)])
       (append (quick-sort (filter (lambda (x) (< x pivot)) rest))
               (list pivot)
               (quick-sort (filter (lambda (x) (>= x pivot)) rest))))]))

(display "Original: ")
(println '(10 7 8 9 1 5))
(display "Sorted: ")
(println (quick-sort '(10 7 8 9 1 5)))
