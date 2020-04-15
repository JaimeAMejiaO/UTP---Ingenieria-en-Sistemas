#lang racket
(define (valorAbsolutoDeUnDigito)
  (define x 0)
  (display "Programa para saber el valor absoluto de un numero;")
  (display "
Digite el digito para saber el valor absoluto:")
  (set! x (read))
  (display "
El valor absoluto es")
  (display (abs x))
  )