#lang sicp


(define (p) (p))

(define (text x y)
  (if (= x 0)
      0
      y))

(test 0 (p))

;Given the code above, if appicative order evaluation were used, then (p) would need to be evaluated and the
;result used as the parameter argument. However, p is a non-terminating recursive function. So the program would
;run forever.
;If normal order evaluation were used, (p) would not actually be evaluated/expanded unless the "then" portion of
;the if conditional is evaluated. SInce that is not the case, the function would return 0. 