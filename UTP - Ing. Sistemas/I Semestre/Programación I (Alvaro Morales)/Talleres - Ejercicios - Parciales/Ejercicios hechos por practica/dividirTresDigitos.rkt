#lang racket
(define (dividirTresDigitos)
  (define x 0)
  (define y 0)
  (define z 0)
  (display "Programa para dividir tres digitos")
  (display "
Digite el dividendo:")
  (set! x (read))
  (display "
Digite el primer divisor:")
  (set! y (read))
  (display "
Digite el segundo divisor:")
  (set! z (read))
  (display "
La division de: ")
  (display x)
  (display " con ")
  (display y)
  (display " es ")
  (display (/ x y))
  (display  " y esa division con ")
  (display z)
  (display " es ")
  (display (/ x y z))
  )