#lang racket
; bools and list numbers 

(define head car)
(define tail cdr) ; I forgot to define these before running T_T
; (car (cdr '(1 2 3 4))
(define second-val
  (lambda (lst)
    (car (cdr lst))))
; (second-val '(1 4 3 2 5 3)) returns 4


; check if it is number 7 (test-for-seven 2) is NO 
(define test-for-seven
  (lambda (n)
    (if (= n 7)
        (printf "YES")
        (printf "NO"))))


; takes elements in a list and prints them each on a line 
(define elem-per-line
  (lambda (lst)
    (if (eq? lst '()) ; base case 
        (printf "END")
        [(lambda()
           ((printf "~a~n" (car lst))
            (elem-per-line (cdr lst))))])))


(define tail cdr) ; cdr just takes tail we are changing the name for fun
(define rev
  (lambda (lst acc)
    (if (null? lst)
        '()
        (rev (tail lst))))) 