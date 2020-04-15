#lang racket
(define(menu)
  (newline)
  (newline)
  (display"|------------------------------------------------------------------------------------------------|\n")
  (display"|                                           TALLER DE LISTAS                                     |")
  (display"|------------------------------------------------------------------------------------------------|\n")
  (display"|  1. Recibir una lista random y recursivamente contar sus elementos.                            |\n")
  (display"|  2. Promedio de las posiciones impares de una lista.                                           |\n")
  (display"|  3. Pedir un tamaño de la lista y un dato para buscarlo en la lista.                           |\n")
  (display"|  4. Dada una lista y un dato, en la lista creada adicionar el dato al principio.               |\n")
  (display"|  5. Mostrar el entero mayor contenido en una lista.                                            |\n")
  (display"|  6. Mostrar los numeros pares de una lista en otra lista.                                      |\n")
  (display"|  7. Crear una lista con los datos queridos por el usuario hasta que guste dejar de hacerlo.    |\n")
  (display"|  8. Dados dos numeros (posicion inicial y posicicon final), crear una sublista que muestre los |\n|               valores que hay entre ellos incluyendolos.                                       |\n")
  (display"|  9. Determinar si dos listas son iguales.                                                      |\n")
  (display"|  10. Notas parciales (MENÚ).                                                                   |\n")
  (display"|  0. Salir.                                                                                     |\n") 
  (display"|------------------------------------------------------------------------------------------------|\n")
  (display"\nDigite el numero de la opción que desea realizar: ")
  (define opcion (read))
  (cond
    ((= opcion 1) (ejercicio1 0 0))
    ((= opcion 2) (ejercicio2 0 0))
    ((= opcion 3) (ejercicio3 0 0 0))
    ((= opcion 4) (ejercicio4 0 0 0 0))
    ((= opcion 5) (ejercicio5 0 0))
    ((= opcion 6) (ejercicio6 0 0 0))
    ((= opcion 7) (ejercicio7 0))
    ((= opcion 8) (ejercicio8 0 0 0 0 0))
    ((= opcion 9) (ejercicio9 0 0 0))
    ((= opcion 10) (ejercicio10))
    ((= opcion 0) (display "\nHa decidido salir de la aplicación, hasta pronto..."))
    (else (display "\nError, opción no válida..."))
    )
  (if (not (= opcion 0))
      (menu)
      (void)
      )  
  )

(define (asignarValores l1 long)
  (if(> long 0)
     (begin
       (set! l1 (cons (random 10) l1))
       (asignarValores l1 (- long 1))
       )
     (begin
       (printf "La lista es ~a" l1)
       l1
       )
     )
  )

;Ejercicio 1: Contar recursivamente cuantos elementos tiene una lista
(define (ejercicio1 l1 long)
  (set! l1 (list '()))
  (display "Programa para que se cuente recursivamente cuantos elementos tiene la lista
Digite el largor de la lista: ")
  (set! long (read))
  (set! l1 (asignarValores l1 long))
  (contador l1 0)
  )

(define (contador l1 cont)
  (if(null? (car l1))
     (printf "\nLa lista tiene ~a elementos" cont)
     (contador (cdr l1) (+ cont 1))
     )
  )

;Ejercicio 2: Sacar el promedio de las posiciones impares 
(define (ejercicio2 l1 long)
  (set! l1 (list '()))
  (display "Programa para que dada una lista, saque el promedio de las posiciones impares
Digite el largor de la lista, se mostrará la misma y se sacará el promedio de la suma de los posiciones impares:")
  (set! long (read))
  (set! l1 (asignarValores l1 long))
  (promedio l1 0 0 long)
  )

(define (promedio l1 cont sum pos)
  (if(null? (car l1))
     (printf "\nEl promedio es ~a "(*( / sum cont) 1.0)) 
     (if(= (remainder pos 2) 0)
        (promedio (cdr l1) cont sum (- pos 1))
        (promedio (cdr l1) (+ cont 1) (+ sum (car l1)) (- pos 1))
        )
     )
  )

;Ejericio 3: Se recibe un dato y una lista, finalmente se mostrará la posicion donde aparece la primera vez y si no existe mostrará -1
(define (ejercicio3 l1 long x)
  (define l1 (list '()))
  (display "Programa para que se genere una lista del largor que quiera el usuario y un dato que el usuario quiera saber en que posicion se encuentra primeramente
Digite el largor de la lista: ")
  (set! long (read))
  (set! l1 (asignarValores l1 long))
  (display "\nIngrese el entero que se va a buscar en la lista: ")
  (set! x (read))
  (buscarDato l1 x 1)
  )

(define (buscarDato l1 x pos)
  (if(null? (car l1))
     (display "-1")
     (if(= x (car l1))
        (printf "El valor se encuentra en la posicion ~a " pos)
        (buscarDato (cdr l1) x (+ pos 1))
        ) 
     )
  )

;Ejercicio 4: Dada una lista del largor que quiera el usuario, adicionar un dato (que tambien decidirá el usuario) al inicio de la lista
(define (ejercicio4 l1 l2 long x)
  (set! l1 (list '()))
  (set! l2 (list '()))
  (display "Programa para crear una lista aleatoria y dado un dato que quiera el usuario, acomodarlo al inicio de la misma
Digite la longitud de la lista: ")
  (set! long (read))
  (set! l1 (asignarValores l1 long))
  (display "\nIngrese el entero que se ubicará al inicio de la lista: ")
  (set! x (read))
  (ubicarEnLista2 l1 l2 x)
  )

(define (ubicarEnLista2 l1 l2 x)
  (if(null? (car l1))
     (begin
       (set! l1 (cons x l1))
       (set! l1 (reubicarEnLista1 l1 l2))
       (display l1)
       )
     (begin
       (set! l2 (cons (car l1) l2))
       (ubicarEnLista2 (cdr l1) l2 x))
     )
  )

(define (reubicarEnLista1 l1 l2)
  (if(not(null? (car l2)))
     (begin
       (set! l1 (cons (car l2) l1))
       (reubicarEnLista1 l1 (cdr l2))
       )
     l1
     )
  )

;Ejercicio 5: Dada una lista creada con el largor que quiera el usuario, en la misma se buscará el entero mas grande de la lista y -1 si la lista está vacia
(define (ejercicio5 l1 long)
  (set! l1 (list '()))
  (display "Programa que creará una lista y en esta se almacenarán datos aleatorios, se buscará el mayor y si la lista está vacia se mostrará -1 
Digite de que tamaño quiere que sea la lista: ")
  (set! long (read))
  (set! l1 (asignarValores l1 long))
  (busquedaMayor (cdr l1) (car l1))
  )

(define (busquedaMayor l1 x)
  (if (equal? l1 '())
      (display "\nLa lista está vacia: -1")
   (if(null? (car l1))
     (printf "\nEl entero mayor es ~a" x)
     (if(> x (car l1))
        (busquedaMayor (cdr l1) x)
        (busquedaMayor (cdr l1) (car l1))
        )
     )
   )
  ) 

;Ejercicio 6: Dada una lista, crear otra lista con los datos pares de la primera
(define(ejercicio6 l1 l2 long)
  (set! l1 (list '()))
  (set! l2 (list '()))
  (display "Programa para crear una lista con los pares de una lista creada con la longitud que quiera el usuario
Digite la longitud de la lista: ")
  (set! long (read))
  (set! l1 (asignarValores l1 long))
  (paresDeL1AL2 l1 l2 long)
  )

(define (paresDeL1AL2 l1 l2 pos)
  (if(null? (car l1))
     (printf "\nLa lista con los datos pares de la primera es ~a" l2)
     (if (= (remainder (car l1) 2) 0)
        (begin
          (set! l2 (cons (car l1) l2))
          (paresDeL1AL2 (cdr l1) l2 (- pos 1))
          )
        (paresDeL1AL2 (cdr l1) l2 (- pos 1))
        )
     )
  )

;Ejercicio 7: Se estará creando una lista hasta que el usuario quiera acabar, ingresando -1 para decir que ya no asignará ningún otro valor y 0 como que quiere seguir la asignación
(define (ejercicio7 l1)
  (set! l1 (list '()))
  (display "Programa para saber que tan larga es una lista a partir de los datos que introduzca el usuario
Se le estará pidiendo una confirmación de si ya quiere acabar de asignar valores a la lista o no, siendo:
-1         Como que ya decide acabar de asignar valores a la lista
0          Como que quiere seguir asignando valores a la lista

Empiece a digitar valores para asignarlos a la lista: ")
  (asignarValoresEjer7 l1 0 0)
  )

(define (asignarValoresEjer7 l1 SN suma)
  (display "\n¿Ya acabó de ingresar valores?
-1 = Sí
0 = No\n")
  (set! SN (read))
  (cond
    ((= SN -1) (printf "\nHa decidido terminar el proceso de asignación a la lista, esta es la lista hecha ~a y la cantidad de valores que tiene son ~a" (reverse l1) suma))
    ((= SN 0) (begin
                (display "\nIngrese un valor para la lista: ")
                (set! l1 (cons (read) l1))
                (asignarValoresEjer7 l1 SN (+ suma 1))
                ))
    (else l1)
    )
  )

;Ejercicio 8: Dada una lista aleatoria, solicitar 2 numeros (uno como referencia desde donde se sacará una sublista y el otro como el final de la sublista) y mostrarla
(define(ejercicio8 l1 l2 posI posF long)
  (set! l1 (list '()))
  (set! l2 (list '()))
  (display "Programa para tomar valores desde una posicion inicial a una final(la primera posicion es el que esta al lado del ()")
  (display "\nDigite la longitud de la lista: ")
  (set! long (read))
  (set! l1 (asignarValores l1 long))
  (display "\nDigite la posicion inicial: ")
  (set! posF (read))
  (display "\nDigite la poscicion final: ")
  (set! posI (read))
  (primerPunto (- long posI) (- long posF) l1 l2 0)
  )

(define (primerPunto posI posF l1 l2 pos)
  (if(= pos posI)
     (begin
       (set! l2 (puntoFinal posF l1 l2 pos))
       (printf "\nLa lista creada con las posiciones dadas fue: ~a" l2)
       )
     (primerPunto posI posF (cdr l1) l2 (+ pos 1))
     )
  )

(define (puntoFinal posF l1 l2 pos)
  (if(not(> pos posF))
     (begin
       (set! l2 (cons (car l1) l2))
       (puntoFinal posF (cdr l1) l2 (+ pos 1))
       )
     l2
     )
  )

;Ejercicio 9: Determinar si dos listas son iguales por una funcion NO nativa de racket, ambas listas tendrán valores asignados por el usuario
(define (ejercicio9 l1 l2 long)
  (set! l1 (list '()))
  (set! l2 (list '()))
  (display "Programa para determinar si dos listas son iguales por una funcion creada por el programador
Digite la longitud de la lista: ")
  (set! long (read))
  (display "\nDigite los valores de la primera cadena: ")
  (set! l1 (creacionCadena1 l1 long))
  (printf "La lista creada fue ~a" l1)
  (display "\n\nDigite los valores de la segunda cadena: ")
  (set! l2 (creacionCadena2 l2 long))
  (printf "La lista creada fue ~a" l2)
  (newline)
  (listasIgualesONo l1 l2)
  )

(define (creacionCadena1 l1 long)
  (if (> long 0)
      (begin
        (set! l1 (cons (read) l1))
        (creacionCadena1 l1 (- long 1))
        )
      l1
      )
  )

(define (creacionCadena2 l2 long)
  (if (> long 0)
      (begin
        (set! l2 (cons (read) l2))
        (creacionCadena2 l2 (- long 1))
        )
      l2
      )
  )

(define (listasIgualesONo l1 l2)
  (if (null? (car l1))
      (display "\n--------------------------------Las listas son iguales--------------------------------")
      (if (= (car l1) (car l2))
          (listasIgualesONo (cdr l1) (cdr l2))
          (display "\n--------------------------------Las listas no son iguales--------------------------------")
          )
      )
  )

;Ejercicio 10: Menu de notas parciales
(define (ejercicio10)
  (define notas(list '())) 
  (menu2 notas)
  )

(define(menu2 notas)
  (display"                                                |------------------------------------------------------|\n")
  (display"                                                |                  NOTAS PARCIALES                     |\n")
  (display"                                                |------------------------------------------------------|\n")
  (display"                                                |  1. Agregar estudiante con sus notas.                |\n")
  (display"                                                |  2. Mostrar los estudiantes con su definitiva.       |\n")
  (display"                                                |  0. Salir.                                           |\n") 
  (display"                                                |------------------------------------------------------|\n")
  (display"\n                                              Digite el numero de la opción que desea realizar: ")
  (define opcion (read))
  (cond
    ((= opcion 1)(define palabrax (list '()))
                 (define codigo (list '()))
                 (define nombre (list '()))
                 (define nota1 (list '()))
                 (define nota2 (list '()))
                 (define nota3 (list '()))
                 (define definitiva (list '()))
                 (agregar-codigo notas palabrax codigo nombre nota1 nota2 nota3 definitiva)
                 )
    ((= opcion 2)(display "\nLas notas guardadas son:\nCÓDIGO          NOMBRE/APELLIDOS          NOTA1          NOTA2          NOTA3          DEFINITIVA\n\n")
                 (display notas)
                 (display" \n-------------------------------------------------\n")
                 )
    ((= opcion 0) (display "\nHa decidido salir de la aplicación, hasta pronto..."))
    (else (display "\nError, opción no válida..."))
    )
  (if (not (= opcion 0))
      (menu2 notas)
      (void)
      )  
  )


(define (agregar-codigo notas palabrax codigo nombre nota1 nota2 nota3 definitiva)
  (display"\nIngrese su código: ")
  (set! codigo(read))
  (agregar-nombre notas palabrax codigo nombre nota1 nota2 nota3 definitiva)
  )

(define (agregar-nombre notas palabrax codigo nombre nota1 nota2 nota3 definitiva)  
  (display"\nIngrese ENTRE COMILLAS su nombre y apellidos: ")
  (set! nombre (read))
  (agregar-nota1 notas palabrax codigo nombre nota1 nota2 nota3 definitiva)
  )

(define (agregar-nota1 notas palabrax codigo nombre nota1 nota2 nota3 definitiva) 
  (display"\nIngrese su primera nota: ")
  (set! nota1 (read))
  (agregar-nota2 notas palabrax codigo nombre nota1 nota2 nota3 definitiva)
  )

(define (agregar-nota2 notas palabrax codigo nombre nota1 nota2 nota3 definitiva) 
  (display"\nIngrese su segunda nota: ")
  (set! nota2 (read))
  (agregar-nota3 notas palabrax codigo nombre nota1 nota2 nota3 definitiva)
  )

(define(agregar-nota3 notas palabrax codigo nombre nota1 nota2 nota3 definitiva) 
  (display"\nIngresa su tercera nota: ")
  (set! nota3 (read))
  (agregar-definitiva notas palabrax codigo nombre nota1 nota2 nota3 definitiva)
  )

(define (agregar-definitiva notas palabrax codigo nombre nota1 nota2 nota3 definitiva) 
  (set! definitiva (/(+ nota1 nota2 nota3) 3))
  (sinonimo notas palabrax codigo nombre nota1 nota2 nota3 definitiva 1)
  )


(define(sinonimo notas palabrax codigo nombre nota1 nota2 nota3 definitiva pos)
  (cond
    ((= pos 1) (sinonimo notas (cons definitiva palabrax) codigo nombre nota1 nota2 nota3 definitiva (+ pos 1)))
    ((= pos 2) (sinonimo notas (cons nota3 palabrax) codigo nombre nota1 nota2 nota3 definitiva (+ pos 1)))
    ((= pos 3) (sinonimo notas (cons nota2 palabrax) codigo nombre nota1 nota2 nota3 definitiva (+ pos 1)))
    ((= pos 4) (sinonimo notas (cons nota1 palabrax) codigo nombre nota1 nota2 nota3 definitiva (+ pos 1)))
    ((= pos 5) (sinonimo notas (cons nombre palabrax) codigo nombre nota1 nota2 nota3 definitiva (+ pos 1)))
    ((= pos 6) (sinonimo notas (cons codigo palabrax) codigo nombre nota1 nota2 nota3 definitiva (+ pos 1)))
    ((= pos 7) (sinonimo (cons palabrax notas) palabrax codigo nombre nota1 nota2 nota3 definitiva (+ pos 1)) )
    (else (menu2 notas))
    )
  )

(menu)