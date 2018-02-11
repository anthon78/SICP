#lang racket

(define (+ a b)
  (if (= a 0)
      b
      (inc (+ (dec a) b))))

; (+ 4 5)
; (inc (+ (3 5))
; (inc ( inc ( + ( 2 5))))
; (inc ( inc ( inc (+ ( 1 5)))))
; (inc ( inc (inc (inc (+ (0 5))))))
; (inc (inc (inc (inc 5))))
; (inc (inc (inc 6)))
; (inc (inc 7))
; (inc 8)
; 9


;The above process it recursive. The interpreter must 'keep track' of where it is when it builds out
;a chain of deferred operations. It then "contracts" once the chain has been built out.


(define (+ a b)
  (if (= a 0)
    b
    (+ (dec a) (inc b))))

;(+ 4 5)
;(+ 3 6)
;(+ 2 7)
;(+ 1 8)
;(+ 0 9)
; 9

;The abovve process is iterative. You can tell by the fact that it does now "grow and shrink." There are no
;deferred operations for the interpreter to keep track of. The procedure has a fixed number of state variables,
; and a rule describing how to update those state variables,  as well as an end test, (= a 0), that describes
;when the the process is complete. There is no extra "work" to do after each resursive call


