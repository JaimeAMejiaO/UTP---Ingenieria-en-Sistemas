#lang racket
(define (volumenCilindro)
  (define r 0)
  (define h 0)
  (display "Programa para saber el volumen de un cilindro")
  (display "
La formula usada es V = PI * r2* h , por consiguiente requiero del valor del radio (r) y la altura (h)
Por favor digite el radio: ")
  (set! r (read))
  (display "
Ahora por favor digite el valor de la altura: ")
  (set! h (read))
  (display "
El volumen es: ")
  (display (* pi r r h))
  )