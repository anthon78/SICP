#lang racket

(define (double x)
  (* x 2))

(define (halve x)
  (/ x 2))

(define (even? x)
  (= (remainder x 2) 0))


(define (iter-mult a b product)
  (cond ((= b 0) product)
        ((even? b) (iter-mult (double a) (halve b) product))
        (else (iter-mult a (- b 1) (+ a product)))))

(define (mult x y)
  (iter-mult x y 0))

