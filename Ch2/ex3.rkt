#lang racket

;point 
(define (make-point x y)
  (cons x y))

(define (x-point point)
  (car point))

(define (y-point point)
  (cdr point))

;line segment
(define (make-segment p1 p2)
  (cons p1 p2))

(define (start-segment line)
  (car line))

(define (end-segment line)
  (cdr line))

(define (midpoint-segment line)
  (let ((px (+
             (x-point (start-segment line))
             (x-point (end-segment line))))
        (py (+
             (y-point (start-segment line))
             (y-point (end-segment line)))))
    (make-point (/ px 2) (/ py 2))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (make-rectangle p1 p2)
  (cons p1 p2))

(define (rect-width r)
  (abs (- (x-point (car r)) (x-point (cdr r)))))

(define (rect-height r)
  (abs (- (y-point (car r)) (y-point (cdr r)))))

(define (rect-perimeter r)
  (* 2 (+ (rect-width r) (rect-height r))))

(define (rect-area r)
  (* (rect-width r) (rect-height r)))




















