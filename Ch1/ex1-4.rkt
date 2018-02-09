#lang racket

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

;this function takes two arguments, a and b. If b is > 0 the if expression returns the '+' procedure
;and if b is <= 0, the if expression evaluates to the '-' procedure. This result is then the procedure applied
;to arguments a and b, and the result is the return value when the function is called.

