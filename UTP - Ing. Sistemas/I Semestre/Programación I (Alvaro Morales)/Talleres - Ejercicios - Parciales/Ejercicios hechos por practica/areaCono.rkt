#lang racket
(define (areaCono)
  (define r 0)
  (define h 0)
  (display "Programa para saber el area de un cono
La formula para saber cual es el area del cono es A = PI * r2+ PI * r * g , y solo necesito saber el valor del radio (r) y la altura (h)
Digite el valor del radio (r): ")
  (set! r (read))
  (display "
Ahora digite el valor de la altura (h): ")
  (set! h (read))
  (display "
El area del cono es: ")
  (define g (sqrt (+(* h h)(* r r))))
  (display (+ (* pi r r)(* pi r g)))
  )