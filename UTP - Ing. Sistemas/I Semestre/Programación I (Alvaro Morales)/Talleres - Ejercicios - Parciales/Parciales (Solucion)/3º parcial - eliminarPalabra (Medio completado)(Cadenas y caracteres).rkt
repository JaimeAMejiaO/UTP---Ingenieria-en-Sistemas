#lang racket
(define (principal cad)
  (display "Programa para que el usuario digite una cadena y posteriormente digite un numero entero (que será una palabra dentro de la cadena) y está se eliminará
Digite la cadena: ")
  (set! cad (read))
  (validacion cad)
  (cantidadPal cad 0 1)
  )

(define (validacion cad)
  (if (> (string-length cad) 100)
      (display "Ha superado el limite de caracteres")
      (void)
      )
  )

(define (cantidadPal cad pos sum)
  (define delPal 0)
  (if (< pos (string-length cad))
      (if (equal? (string-ref cad pos) #\space)
          (cantidadPal cad (+ pos 1) (+ sum 1))
          (cantidadPal cad (+ pos 1) sum)
          )
      (begin (display "La cantidad de palabras son: ") (display sum)
             (display "
Teniendo en cuenta la cantidad de palabras que hay, digite un numero que sea menor o igual a ese para que sea eliminada la palabra: ")
             (set! delPal (read))
             (deleteWord cad 0 delPal sum (make-string(string-length cad)) 0 0)
             )
      )
  )

(define (deleteWord cad pos delPal sum cad2 pos2 findSpace)
  (if (> delPal sum)
      (display "El numero que ingreso supera el numeor de palabras")
      (if (< pos (string-length cad))
          (if (and (= delPal 1) (not (equal? (string-ref cad pos) #\space)))
              (begin
                (deleteWord cad pos delPal sum cad2 (+ pos2 1) findSpace)
                (string-set! cad2 pos (string-ref cad pos2))
                )
              (if (< findSpace delPal)
                  #|La idea era que a partir del numeor ingresado la varibale de "findSpace" se sume hasta ese valor y elimine la palabra hasta encontrar otro espacio ya que a partir de ese momento la varibale de buscar un espacio seria distinta y dejaria de eliminar|#
                  )
              )
          (void)
          )
      )
  )


(principal 0)