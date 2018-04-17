#lang sicp

(define (append list1 list2)
  (if (null? list1)
      list2
      (cons (car list1) 
            (append (cdr list1) 
                    list2))))

(define (reverse xs)
  (if (null? xs)
      nil
      (append (reverse (cdr xs)) (cons (car xs) nil))))

