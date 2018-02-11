#lang racket

;Newtons method to find sqrt of a number x
;with a guess 'y', average y with x/y to get a closer approximation

(define (sqrt x)
  (sqrt-iter 1.0 x))

(define (square x)
  (* x x))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
(< (abs (- (square guess) x)) 0.001))


;good-enough is not very effective for small numbers because there is a predetermined tolerance of 0.001.
;Relative to larger numbers this is a fine tolerance, but for small numbers it is relatively too large and would
;lead to very inaccurate calculations
;For extremely large numbers, we have to deal with the fact that computers do not have unlimited precision. At some
;point the computer will need to round your number, and this may or may not have a noticable impact on your square
;root calculation. The computer might not catch such a small change between big numbers. 

(define (good-enough?-modified guess x)
  (< (abs (- (improve guess x) guess))
     (* guess 0.001)))

;This modified good-enough function is better for large ans small numbers, as the predetermined tolerance
; is no leonger a specific number but a fraction of the previous guess. This avoids the problems encountered
;by the original version. 


  


      



 








