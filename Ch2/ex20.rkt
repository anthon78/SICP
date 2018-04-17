#lang sicp

(define (same-parity int . rest)
    (define (make-list xs)
      (cond ((null? xs) nil)
            ((= (remainder int 2) (remainder (car xs) 2))
               (cons (car xs) (make-list (cdr xs))))
            (else (make-list (cdr xs)))))
    (cons int (make-list rest)))

            