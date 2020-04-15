#lang racket
(define (convCmAPulAPieAYar)
  (define cm 0)
  (display "Programa para convertir el dato en centimetros dado en pulgadas, pulgadas a pies y pies a yardas
Por favor digite el valor de los centimetros: ")
  (set! cm (read))
  (define pulgada (cmAPul cm))
  (define pie (pulAPie pulgada))
  (define yarda (pieAYarda pie))
  (display "
Los centimetros en pulgadas son: ")
  (display pulgada)
  (display "
Las pulgadas a pie son: ")
  (display pie)
  (display "
Los pies a pulgadas son: ")
  (display yarda)
 ) 

(define (cmAPul x)
  (/ x 2.54)
  )

(define (pulAPie y)
  (/ y 12.0)
  )

(define (pieAYarda z)
  (/ z 3.0)
  )