#lang sicp

;Does not work for zero

(define (p-triangle n)
  (if (= n 1)
      1
      (+ (expt 2 (- n 1)) (p-triangle (- n 1)))))










