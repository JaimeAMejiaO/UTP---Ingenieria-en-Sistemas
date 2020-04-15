#lang racket
(define (areaTrapecioRegular)
  (define B 0)
  (define b 0)
  (define h 0)
  (display "Programa para calcular el area de un trapecio regular apartir de informacion proporcionada por el usuario
Se utilizará la formula A= (B+b) * h / 2 , por lo cual necesito que digite la base mayor (B), la base menor (b) y la altura (h)
Por favor digite la base mayor (B): ")
  (set! B (read))
  (display "Por favor digite la base menor (b): ")
  (set! b (read))
  (display "Por favor digite la altura (h): ")
  (set! h (read))
  (display (procesoAreaTrapecioRegular B b h))
  )

(define (procesoAreaTrapecioRegular x y z)
  (* (+ x y) (/ z 2))
  )