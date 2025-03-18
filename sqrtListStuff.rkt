#lang racket

(define x 7)

(define add3 (lambda(x)(+ x 3)))
(define a 4)

; take square root 
(define mysqr
  (lambda(somenumber)(* somenumber somenumber))) ; lots of parentheses

;(define $#! 9)


; pulls list apart and constructs it back to the recursive call and pulls the head off and pushes it back on 
(define foo
  (lambda (lst)
    (if (empty? lst)
        empty
        (cons (car lst (foo (car list)))))))
