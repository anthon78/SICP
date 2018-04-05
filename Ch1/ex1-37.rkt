#lang sicp

;recursive 
(define (cont-frac n d k)
  (define (frac x)
    (if (< x k)
        (/ (n x) (+ (d x) (frac + (x 1))))
        (/ (n x) (d x))))
  (frac 1))


;iterative
(define (cont-frac-iter n d k)
  (define (frac x result)
    (if (= x 0)
        result
        (frac (- x 1) (/ (n x) (+ (d x) result)))))
  (frac (- k 1) (/ (n k) (d k))))


          
        


     
