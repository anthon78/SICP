#lang sicp

(define (square x) (* x x))

(define (square-list items)
  (define (iter things answer)
    (if (null? things)
        answer
        (iter (cdr things)
              (cons (square (car things))
                    answer))))
  (iter items nil))

;The above code will reverse the order beause it will iterate through each element of
;the list in order, and on each iteration we use "car" to create a new "items" list. But
;"car" appends to the start of the list, so we keep adding on to the beginning rather than
;the end.


(define (square-list2 items)
  (define (iter things answer)
    (if (null? things)
        answer
        (iter (cdr things)
              (cons answer
                    (square 
                     (car things))))))
  (iter items nil))

;The above is wrong because we are making the list and the second an integer. Every time we
;add on to the list the integer is wrapped in another list






