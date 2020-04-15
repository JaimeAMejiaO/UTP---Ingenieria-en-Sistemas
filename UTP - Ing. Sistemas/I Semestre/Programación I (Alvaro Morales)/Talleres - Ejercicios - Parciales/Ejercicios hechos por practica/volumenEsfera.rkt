#lang racket
(define (volumenEsfera)
  (define r 0)
  (display "Programa para calcular el volumen de una esfera
La formula para calcular la esfera es V = 4/3 * PI * r3 , por consiguiente necesito saber el valor del radio (r)
Digite el valor del radi (r): ")
  (set! r (read))
  (display "El volumen de la esfera es: ")
  (display (* (/ 4 3) pi r r r))
  )