#lang racket
(define (usoRemainderYQuotient)
  (define x 0)
  (define y 0)
  (display "Programa por el cual se suma de cada digito (de las dos cifras que dará el usuario) y el producto de la suma de los digitos de la primera cifra y la segunda
Digite por favor la primera cifra de dos digitos ENTEROS: ")
  (set! x (read))
  (display "
Digite por favor la segunda cifra de dos digitos ENTEROS: ")
  (set! y (read))
  (define suma (sumaAllNumbers x y))
  (display "
La suma de cada uno de los digitos es...: ")
  (display suma)
  (display "
El producto de la suma de cada digito de la primera cifra con la suma de los digitos de la segunda cifra es...: ")
  (define multiplicacion (producDosCifras x y))
  (display multiplicacion)
  )

(define (sumaAllNumbers a b)
  (+ (quotient a 10) (remainder a 10) (quotient b 10) (remainder b 10))
  )

(define (producDosCifras a b)
  (* (+ (quotient a 10) (remainder a 10)) (+ (quotient b 10) (remainder b 10)))
  )