#lang sicp


(define (last-pair xs)
  (if (null? (cdr xs))
      (car xs)
      (last-pair (cdr xs))))






