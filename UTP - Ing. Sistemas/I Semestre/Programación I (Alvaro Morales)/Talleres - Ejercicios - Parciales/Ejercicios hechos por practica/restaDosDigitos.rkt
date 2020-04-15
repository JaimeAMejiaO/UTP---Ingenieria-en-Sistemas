#lang racket
(define (restaDosDigitos)
  (define x 0)
  (define y 0)
  (display "Programa para restar dos digitos:")
  (display "
Digite el primer nuemro:")
  (set! x (read))
  (display "
Digite el segundo digito")
  (set! y (read))
  (display "
La resta de estos numeros es:")
  (display (- x y))
  )