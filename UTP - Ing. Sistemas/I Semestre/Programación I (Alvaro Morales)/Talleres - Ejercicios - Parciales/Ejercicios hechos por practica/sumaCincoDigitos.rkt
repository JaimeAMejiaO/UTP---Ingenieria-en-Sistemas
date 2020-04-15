#lang racket
(define (sumaCincoDigitos)
  (define v 0)
  (define w 0)
  (define x 0)
  (define y 0)
  (define z 0)
  (display "Programa para sumar 5 digitos:")
  (display "
Digite el primer valor")
  (set! v (read))
  (display "
Digite el segundo valor")
  (set! w (read))
  (display "
Digite el tercer tercer valor")
  (set! x (read))
  (display "
Digite el cuarto valor")
  (set! y (read))
  (display "
Digite el cinco valor")
  (set! z (read))
  (display "
La suma de estos digitos es:")
  (display (+ v w x y z))
  )
