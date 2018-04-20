#lang sicp

(define (for-each f xs)
  (cond ((null? xs) #t)
  (else
   (f (car xs))
   (for-each f (cdr xs)))))
















      







      