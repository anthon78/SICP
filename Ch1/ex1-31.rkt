#lang racket
;recursive process

(define (product term a next b)
  (if (> a b)
      1
      (* (term a)
         (product term (next a) next b))))

;factorial 
(define (inc x) (+ x 1))
(define (identity x) x)

(define (factorial n)
  (product identity 1 inc n))

;approximate pi
(define (pi-term n)
  (if (even? n)
      (/ (+ n 2) (+ n 1))
      (/ (+ n 1) (+ n 2))))

(define (approx-pi a b)
  (* 4(product pi-term  a inc b)))

;iterative process
(define (product-iter term a next b)
  (define (iter x result)
    (cond ((> x b) result)
          (else (iter (next x) (* result (term x))))))
  (iter a 1))

(define (factorial-iter n)
  (product-iter identity 1 inc n))




