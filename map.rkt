; Gowri  

#lang racket


; basic map function, recursive
(define map
  (lambda (function lst)
    (cond
      [(empty? lst) '()] 
      [else(cons (function (first lst))
                 (map function(rest lst)))])))

; runs like
; (map *function for each one* (list *list values separated by space*))
; ex (map add1 (list 1 4 9 16))
