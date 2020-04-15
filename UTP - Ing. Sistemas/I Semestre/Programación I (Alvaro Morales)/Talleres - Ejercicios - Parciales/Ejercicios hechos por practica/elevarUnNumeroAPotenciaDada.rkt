#lang racket
(define (elevarUnNumeroAPotenciaDada)
  (define x 0)
  (define y 0)
  (display "Progrma para elevar un numero a una potencia dada")
  (display "
Digite el número que quiere elevar ")
  (set! x (read))
  (display "
Ahora digite la potencia ")
  (set! y (read))
  (display "
El resultado es: ")
  (display (expt x y))
  )