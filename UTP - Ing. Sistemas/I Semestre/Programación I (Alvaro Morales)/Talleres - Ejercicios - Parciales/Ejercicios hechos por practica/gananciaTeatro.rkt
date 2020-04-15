#lang racket
(define (gananciaFuncion)
  (define cliente 0)
  (display "Programa para saber cuantas ganancias/perdidas tiene el teatro por funcion")
  (display "Por favor introduzca el número de clientes que ingresaron a la funcion")
  (set! cliente (read))
  (display "La ganancia(+) o perdida(-) fue de: ")
  (display (+ (* cliente 10000) -30000))
  )