#lang racket
(define (pagoImpuesto)
  (define p 0)
  (display "Programa para calcular el impuesto a pagar")
  (display "
Digite el pago efectuado para calcular el impuesto a pagar:")
  (set! p (read))
  (display " El pago efectuado fue de: ")
  (display p)
  (display "
El pago total con impuesto es ")
  (display (impuestoAPagarTotal p))
  (display "
El pago independiente del impuesto es:")
  (display (impuestoAPagar p))
)

(define (impuestoAPagarTotal x)
  (* (/ x 100 ) 115)
)

(define (impuestoAPagar x)
  (* (/ 15 100 ) x)
)