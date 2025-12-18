%{
  LilyPond is a music engraving language.
  It is not Turing complete in its standard markup, but it embeds Scheme.
  This demonstrates sorting pitches using the embedded Scheme.
%}

\version "2.22.0"

#(define (quick-sort lst)
   (if (null? lst) '()
       (let ((pivot (car lst))
             (rest (cdr lst)))
         (append (quick-sort (filter (lambda (n) (< n pivot)) rest))
                 (list pivot)
                 (quick-sort (filter (lambda (n) (>= n pivot)) rest))))))

#(define pitches '(10 7 8 9 1 5))
#(display "Original: ")
#(display pitches)
#(newline)
#(display "Sorted:   ")
#(display (quick-sort pitches))
#(newline)

{ c' d' e' } % Dummy score to compile
