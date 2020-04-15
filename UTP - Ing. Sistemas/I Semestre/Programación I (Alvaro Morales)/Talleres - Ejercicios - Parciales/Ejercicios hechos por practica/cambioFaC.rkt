#lang racket
(define (cambioFaC)
  (define F 0)
  (display "Programa para calcular grados en Celcius a partir de los grados Fahrenheit
Digite por favor los grados en Fahrenheit:")
  (set! F (read))
  (display "Los grados en Celcius son: ")
  (display (truncate (*(- F 32)(/ 5 9))))
  )