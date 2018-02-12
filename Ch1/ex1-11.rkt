#lang racket

;recursive process
(define (f n)
  (cond ((< n 3) n)
        (#t (+ (f (- n 1))
               (* 2 (f (- n 2)))
               (* 3 (f (- n 3)))))))


;iterative process
(define (f-iter a b c count)
  (if (= count 0)
      a
      (f-iter b c (+ (* 3 a) (* 2 b) c) (- count 1))))

(define (f-better n)
  (f-iter 0 1 2 n))







     