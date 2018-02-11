#lang racket

;(x/y**2 + 2y)/ 3

(define (cube-root-iter guess x)
  (if (good-enough? guess x)
      guess
      (cube-root-iter (improve guess x)
                      x)))

(define (good-enough? guess x)
  (< (abs (- (* guess guess guess) x)) .01))

(define (improve guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))

(define (cube-root x)
  (cube-root-iter 1.0 x))




