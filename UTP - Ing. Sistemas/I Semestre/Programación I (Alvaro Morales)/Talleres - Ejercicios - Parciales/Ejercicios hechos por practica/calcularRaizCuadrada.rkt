#lang racket
(define (calcularRaizCuadrada)
  (define x 0)
  (display "Programa para calcular la raiz cuadrada de un número dado")
  (display "
Digite el numero al cual se le sacará raiz cuadrada")
  (set! x (read))
  (display "La raiz cuadrada de ")
  (display x)
  (display " es")
  (display (expt x (/ 1 2)))
  )