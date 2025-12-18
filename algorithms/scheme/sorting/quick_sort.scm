(define (quick-sort lst)
  (cond
    ((null? lst) '())
    (else
     (let ((pivot (car lst))
           (rest (cdr lst)))
       (append (quick-sort (filter (lambda (x) (< x pivot)) rest))
               (list pivot)
               (quick-sort (filter (lambda (x) (>= x pivot)) rest)))))))

(display "Original: ")
(display '(10 7 8 9 1 5))
(newline)
(display "Sorted: ")
(display (quick-sort '(10 7 8 9 1 5)))
(newline)
