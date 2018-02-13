#lang racket

(define (even? n)
  (= (remainder n 2) 0))

(define (square x)
  (* x x))



(define (expt b n)
  (expt-iter b n 1))

(define (expt-iter b n a)
  (cond ((= n 0) a)
        ((even? n) (expt-iter b (/ n 2) (square a)))
        (else (expt-iter b (- n 1) (* a b)))))

