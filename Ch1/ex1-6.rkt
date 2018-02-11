#lang racket

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))

;Using new-if rather than if, the sqrt-iter function will never terminate. When calling a function with arguments,
;Racket will evaluate each argument before binding the result to a parameter. The body of sqrt-iter contains a call
;to new-if where sqrt-iter is called recursively as an argument. This will repeat forever. 
                     