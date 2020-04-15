#lang racket
(define (volumenCono)
  (define r 0)
  (define h 0)
  (display "Programa para calcular el volumen de un cono
La formula para calcular el valor de un cono es V = 4/3 * PI * r2* h , por consiguiente necesito saber el valor del radio (r) y la altura (h)
Digite el valor del radio (r): ")
  (set! r (read))
  (display "Ahora digite el valor de la altura (h): ")
  (set! h (read))
  (display "el valor del cono es: ")
  (display (* (/ 4 3) pi r r h))
    )