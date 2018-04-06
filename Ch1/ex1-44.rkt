#lang sicp

(define (smooth f dx)
  (lambda (x)
    (/ (+
        (f (- x dx))
        (f x)
        (f (+ x dx)))
       3)))

(define (compose f g)
  (lambda (x)
    (f (g x))))

(define (repeated f x)
  (if (= x 1)
      f
      (compose f (repeated f (- x 1)))))


(define (n-fold f dx n)
  (repeated (smooth f dx) n))






