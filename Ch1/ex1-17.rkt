#lang racket


(define (double x)
  (* x x))

(define (halve x)
  (/ x 2))

(define (even? x)
  (= (remainder x 2) 0))

(define (mult a b)
  (cond ((= b 0) 0)
        ((= b 1) a)
        ((even? b) (double (mult a (halve b))))
        (else (+ a (mult a (- b 1))))))