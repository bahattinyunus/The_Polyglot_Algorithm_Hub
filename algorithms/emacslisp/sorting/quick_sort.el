(defun quick-sort (list)
  (if (null list)
      nil
    (let* ((pivot (car list))
           (rest (cdr list))
           (less (seq-filter (lambda (x) (< x pivot)) rest))
           (greater (seq-filter (lambda (x) (>= x pivot)) rest)))
      (append (quick-sort less) (list pivot) (quick-sort greater)))))

(setq arr '(10 7 8 9 1 5))
(message "Original: %S" arr)
(setq sorted (quick-sort arr))
(message "Sorted: %S" sorted)
