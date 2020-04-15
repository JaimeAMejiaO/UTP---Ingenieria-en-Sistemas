#lang racket
;Ejercicio 1
(define (programaTresCifras x)
  (display "Programa para saber si una cifra es de 3 digitos
- Si se entrega una cifra de 3 digitos, se le mostrará al usuario los dos primeros en conjunto y los dos ultimos en conjunto
- Si se entrega una cifra de solo 2 digitos, se mostrará error
Digite la cifra: ")
  (set! x (read))
  (cond
    ((and (>= x 100) (<= x 999)) (begin (display "El primer conjunto de numeros (los dos primeros), son: ") (display (quotient x 10)) (newline) (display "El segundo conjunto de numeros (los dos ultimos), son: ") (remainder x 100)))
    ((and (>= x 1) (<= x 99)) (display "ERROR"))
    ((>= x 1000) (display "La cifra ingresada tiene mas de 3 digitos"))
    (else (display "La cifra ingresada no es ni de un digito, de dos digitos o de tres"))
    )
  )
(programaTresCifras 1)
(newline)
(newline)
(newline)

;Ejercicio 2
(define (parONoPar x y)
  (display "Programa para lanzar dos dados y decir si son pares o no pares, mostrando que numeros salieron")
  (set! x (random 1 7))
  (set! y (random 1 7))
  (parONo x y)
  )

(define (parONo x y)
  (cond
    ((= x y) (begin (newline) (display "Los dados son pares con número: ") (display x)))
    ((not (= x y)) (begin (display "Los dados no son pares.") (newline) (display "El valor del primer dado es: ") (display x) (newline) (display "El valor del segundo dado es: ") (display y)))
    (else (display "Se perdió uno de los dados"))
    )
  )
(parONoPar 1 1)
(newline)
(newline)
(newline)

;Ejercicio 3
(define (nombreDecenaYUnidad x)
  (display "Programa que recibe una cifra de dos digitos, que dirá el nombre del valor
Digite una cifra de dos digitos: ")
  (set! x (read))
  (cond 
  ((and (>= x 10) (<= x 99)) (begin (display "El nombre de la cifra es: ") (nombreDecena x) (nombreUnidad x)))
  ((< x 10) (display "La cifra ingresada no es de dos digitos"))
  (else (display "ERROR"))
   )
  )

(define (nombreDecena x)
  (cond
    ((= x 11) (display "ONCE"))
    ((= x 12) (display "DOCE"))
    ((= x 13) (display "TRECE"))
    ((= x 14) (display "CATORCE"))
    ((= x 15) (display "QUINCE"))
    ((and (= (quotient x 10) 2) (= x 20)) (display "VEINTE"))
    ((= (quotient x 10) 1) (display "DIEZ"))
    ((= (quotient x 10) 2) (display "VEINTI"))
    ((= (quotient x 10) 3) (display "TREINTA"))
    ((= (quotient x 10) 4) (display "CUARENTA"))
    ((= (quotient x 10) 5) (display "CINCUENTA"))
    ((= (quotient x 10) 6) (display "SESENTA"))
    ((= (quotient x 10) 7) (display "SETENTA"))
    ((= (quotient x 10) 8) (display "OCHENTA"))
    ((= (quotient x 10) 9) (display "NOVENTA"))
    (else (display "ERROR"))
    )
  )

(define (nombreUnidad x)
  (cond
    ((= (remainder x 10) 0) (display ""))
    ((= x 11) (display ""))
    ((= x 12) (display ""))
    ((= x 13) (display ""))
    ((= x 14) (display ""))
    ((= x 15) (display ""))
    ((= (remainder x 10) 1) (display " y UNO"))
    ((= (remainder x 10) 2) (display " y DOS"))
    ((= (remainder x 10) 3) (display " y TRES"))
    ((= (remainder x 10) 4) (display " y CUATRO"))
    ((= (remainder x 10) 5) (display " y CINCO"))
    ((= (remainder x 10) 6) (display " y SEIS"))
    ((= (remainder x 10) 7) (display " y SIETE"))
    ((= (remainder x 10) 8) (display " y OCHO"))
    ((= (remainder x 10) 9) (display " y NUEVE"))
    (else (display "ERROR"))
    )
  )
(nombreDecenaYUnidad 1)