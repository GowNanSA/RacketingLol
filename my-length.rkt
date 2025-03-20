#lang racket
; Finds length of a list, returns the list size
; I borrowed and tried to recreate something my professor taught me may not be correct T_T 


; recursive accumulator function that takes in a list and number, adds to the number
(define accumulator
  (lambda (lst accu)
     (if (empty? lst)
        accu
        (accumulator (cdr lst) (add1 accu)))))

;(accumulator '(1 4 3 5 3 2) 8) returns 14 as it is 8 + 6 list size = 18 
; car takes first value
; cdr takes last value 

(define my-length
  (lambda (lst) ; pass in a list of anything 
    (define accumulator ; accumulator is embedded here 
      (lambda (lst accu) ; the accumulator counts how many times a value is CDRed
        (if (empty? lst)
            accu
            (accumulator (cdr lst) (add1 accu)))))
    ; call the accumulator here 
    (accumulator lst 0)))


; (my-length '(1 4 2 3 5 1))