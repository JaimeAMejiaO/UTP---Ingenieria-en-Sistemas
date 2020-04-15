#lang racket
(define (volumenConoTruma)
  (define R 0)
  (define r 0)
  (define h 0)
  (display "Programa para calcular el volumen de un cono Truma
La formula para hallar el valor del volumen del cono truma es V = PI * ( R2+ r2+ R * r) * (h/3), por consiguiente necesito saber el valor del radio mayor (R), del radio menor (r) y de la altura (h)
Digite el valor del radio mayor (R): ")
  (set! R (read))
  (display "
Digite el valor del radio menor (r): ")
  (set! r (read))
  (display "
Digite el valor de la altura (h): ")
  (set! h (read))
  (display "El volumen del cono truma es: ")
  (display (*(* pi (+(* R R)(* r r)(* R r)))(/ h 3)))
  )