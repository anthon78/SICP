#lang sicp

(define (append list1 list2)
  (if (null? list1)
      list2
      (cons (car list1) 
            (append (cdr list1) 
                    list2))))


(define (fringe xs)
  (cond ((null? xs) xs)
        ((pair? (car xs)) (append (fringe (car xs)) (fringe (cdr xs))))
        (else (append (list (car xs)) (fringe (cdr xs))))))
        









        
  

