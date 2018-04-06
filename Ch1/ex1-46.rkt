#lang racket


(define (iterative-improve good-enough? improve)
    (define (iter y)
      (cond ((good-enough? y) y)
            (else (iter (improve y)))))
  iter)







