#lang racket
(define (restarUnoAUnDigito)
  (define x 0)
  (display "Programa para restarle 1 a un número")
  (display "
Digite el numero para restarle 1:")
  (set! x (read))
  (display "
La resta del digito ")
  (display x)
  (display " con 1 es ")
  (display (- x 1))
  )