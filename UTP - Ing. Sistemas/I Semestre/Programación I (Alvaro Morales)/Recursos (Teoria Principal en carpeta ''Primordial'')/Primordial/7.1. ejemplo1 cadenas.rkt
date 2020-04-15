#lang racket
(define (cadenas)
  (define cad2 (make-string 20))
  (llenar cad2 0) 
  (display cad2)
)

(define (llenar cad cont)   ;esta función genera una cadena con caracteres obtenidos aleatoriamente
   (if (< cont (string-length cad))
      (begin
          (string-set! cad cont (integer->char (+ 97 (random 26))))        ;analice la generación aleatoria, porque así?
          (llenar cad (+ cont 1))
      )
      (display "")
    )
)

(cadenas)