#lang racket

(define (filtered-accumulate combiner null-value term a next b predicate)
  (cond ((> a b) null-value)
        ((predicate a) (combiner (term a)
                                  (filtered-accumulate
                                   combiner null-value term (next a) next b predicate)))
        (else (filtered-accumulate combiner null-value term (next a) next b predicate))))


(define (product-primes term a next b)
  (filtered-accumulate mult 1 term a next b prime?))

(define mult *)

(define (sum-of-squares-primes a b)
  (product-primes square a inc b))

(define (inc n) (+ n 1))
(define (identity n) n)