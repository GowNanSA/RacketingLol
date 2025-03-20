#lang racket

; range function 
(define reverse-rng ;(rng 5 does '(5 4 3 2 1)
  (lambda (n)
    (if  (= n 0)
         '() ; basecase
         (cons  n (reverse-rng (sub1 n)))))) ; subtract 1 recursively from 1

; append function 
(define app
  (lambda (lst1 lst2)
    (if (null? lst1)
        lst2
        (cons (car lst1) (app (cdr lst1) lst2)))))
; now does (rng 5) does '(0 1 2 3 4)
(define rng
  (lambda (n)
    (if (= n 0)
        '()
        (app (rng (sub1 n))(list (sub1 n)))))) ; turn number into a list or else it cant be curried  


; combine two lists (rev-acc '(1 2 3 4) 3)
(define rev-acc
  (lambda (lst acc)
    (if (null? lst)
        acc
        (rev-acc (cdr lst) (cons (car lst) acc)))))

;(rev-acc '(1 2 3 4))
; (rev-acc '(1 2 3 4) '(1 2 3))