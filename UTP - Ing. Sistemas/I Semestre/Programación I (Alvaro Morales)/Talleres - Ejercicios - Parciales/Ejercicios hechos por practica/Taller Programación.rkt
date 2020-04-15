#lang racket
;Ejercicio 1
(define (problemasPcPorNum)
(define x 0)
  (display "Programa para informar el problema y solucion que tiene el equipo:
Digite un numero del 1 al 3: ")
  (set! x (read))
  (cond
    ((= x 1) (display "El computador no enciende. Revise Conexión"))
    ((= x 2) (display "El computador se bloquea despues de 10 minutos. Vacunar equipo"))
    ((= x 3) (display "El computador se bloquea cuando abro varias apps. Aumentar capacidad de memoria"))
    (else (display "El numero ingresado no es valido"))
    )
  )

;Ejercicio 2
(define (whoIsBiggerOrEqual)
  (define x 0)
  (define y 0)
  (display "Programa para saber si dos numeros son iguales o cual es mayor:
Digite el primer digito: ")
  (set! x (read))
  (display "
Digite el primer digito: ")
  (set! y (read))
  (cond
    ((= x y) (display "Los dos digitos son iguales"))
    ((> x y) (begin (display x)(display " es mayor a ") (display y)))
    ((< x y) (begin (display x)(display " es menor a ") (display y)))
    (else (display "Hay un problema con los digitos"))
   )
)

;Ejercicio 3
(define (compraDeHarina x)
  (display "Programa para vender y promocionar la venta de harina.
- Por la compra hasta de 10 kg se le entregará lo solicitado.
- Si compran hasta  100 kg se le encimarán 3 kg mas, gratuitamente
- Si compran hasta 500 kg se le encima el peso equivalente a 10% de la compra, gratuitamente
 * Digite en kg, la cantidad de harina a comprar: ")
  (set! x (read))
  (calculoHarina x)
  )

(define (calculoHarina p)
  (if (<= p 10)
      (display "La entrega será lo pedido")
      (if (and(> p 10) (<= p 100))
          (begin(display "Se le sumará a la entrega 3 kg: ") (display (+ p 3)))
          (if (and (> p 100)(<= p 500))
              (begin (display "A su compra se le encimará el 10% de lo solicitado: ") (display (+(* p 0.10)p)))
              (display "papa")
           )
       )
      )
  )

;Ejercicio 4
(define (notas x)
  (display "Calculo de notas
Digite un numero de maximo un digito: ")
  (set! x (read))
  (cond
    ((>= x 5) (begin (display "Excelente")(newline) (* x 50)))
    ((and (<= x 5) (>= x 3)) (begin (display "Bueno") (newline) (* x 20)))
    ((< x 3) (begin (display "Malo") (newline) (* x 10)))
    )
  )

;Ejercicio 5
(define (paseoEscuela x)
  (display "Programa para saber el precio a pagar por cada estudiante dependiendo de la cantidad que irá
Digite por favor la cantidad de estudiantes que irán: ")
  (set! x (read))
  (cond
    ((<= x 10) (begin (display "El valor a pagar por cada estudiante será de: ") (display (* x 3000))))
    ((and (> x 10) (<= x 50)) (begin (display "El valor a pagar por cada estudiante será de: ") (display (* x 2500))))
    ((and (> x 50) (<= x 200)) (begin (display "El valor a pagar por cada estudiante será de: ") (display (* x 2000))))
    ((> x 200) (begin (display "El valor a pagar por cada estudiante será de: ") (display (* x 1800))))
    )
  )

;Ejercicio 6
(define (reproduccionLibros x)
  (display "Programa para digitar un numero y que este nos diga que reproducir
Digite un numero del 1 al 5: ")
  (set! x (read))
  (cond
    ((= x 1) (display "reproducir EL CAPITAL"))
    ((= x 2) (display "reproducir EL CÓDIGO DA VINCI"))
    ((= x 3) (display "reproducir HARRY POTTER AND THE HALF BLOOD PRINCE"))
    ((= x 4) (display "reproducir CIEN AÑOS DE SOLEDAD"))
    ((= x 5) (display "reproducir LA ODISEA"))
    (else (display "El numero ingresado no es valido"))
    )
  )

;Ejercicio 7
(define (interes x)
  (display "Cantidad de intereses que se ganan en un año
- Si el deposito es menor a 30000, el banco paga un interes del 3%
- Si el deposito es mayor a 30000 pero menor a 60000, el banco paga un interes del 5%
- Si el deposito es mayor a 60000, el banco paga un interes del 7%
Digite el  valor del deposito: ")
  (set! x (read))
  (cond
    ((< x 30000) (begin (display "El pago de los intereses por parte del banco es: ") (display (* x 0.03))))
    ((and (> x 30000) (< x 60000)) (begin (display "El pago de los intereses por parte del banco es: ") (display (* x 0.05))))
    ((>= x 60000) (begin (display "El pago de los intereses por parte del banco es: ") (display (* x 0.07))))
    )
  )

;Ejercicio 8
(define (alquilerPeliculas x)
  (display "Programa para poner en practica el plan de ventas en el alquiler de peliculas
- Si se alquilan hasta 5 peliculas, cada una valdrá 3000
- Si se alquilan desde 5 pero menos que 10 peliculas, cada una valdrá 2500 y se le encima una pelicula
- Si se alquilan desde 10 pero menos que 15 peliculas, cada una valdrá 2000 y se le encima dos peliculas
- Si se alquilan desde 15 peliculas en adelante, cada una valdrá 1800 y se le encima tres peliculas
Por favor digite el número de peliculas a alquilar: ")
  (set! x (read))
  (display (calculoAlquiler x))
  )

(define (calculoAlquiler p)
  (cond
    ((< p 5) (begin (display "El precio a pagar por el alquiler de las peliculas es: ") (* p 3000)))
    ((and (>= p 5) (< p 10)) (begin (display "El precio a pagar por el alquiler de las peliculas es: ") (display (* p 2500)) (newline) (display "Y el numero de peliculas que se llevará son: ") (+ p 1)))
    ((and (>= p 10) (< p 15)) (begin (display "El precio a pagar por el alquiler de las peliculas es: ") (display (* p 2000)) (newline) (display "Y el numero de peliculas que se llevará son: ")(+ p 2)))
    ((>= p 15) (begin (display "El precio a pagar por el alquiler de las peliculas es: ") (display (* p 1800)) (newline) (display "Y el numero de peliculas que se llevará son: ") (+ p 3)))
    (else (display "No compra na'"))
    )
  )

;Ejercicio 9
(define (barcaVSPereira x)
  (display "Programa al que se le asgina los utopicos goles del Pereira al Barcelona
Digite la cantidad de goles:")
  (set! x (read))
  (cond
    ((= x 1) (display "Se salvó la honrilla"))
    ((and (> x 1) (<= x 3)) (display "Hazaña cafetera"))
    ((and (> x 1) (<= x 3)) (display "Hazaña cafetera"))
    ((>= x 4) (display "Pereira, EL MEJOR EQUIPO DEL MUNDO!"))
    (else (display "Esto es mentira"))
    )
  )

;Ejercicio 10
(define (ventasPorCuadra x)
  (define y 0)
  (display "Programa para ver digitar el numero de cuadras que hizo
- Si hizo menos de 10 cuadras, debe hacer por lo menos 20 ventas
- Si hizo desde 10 a 30 cuadras, debe hacer por lo menos 20 ventas
- Si hizo desde 30 hasta 100 cuadras, debe hacer por lo menos 80 ventas
Digite el numero de cuadras que recorrio: ")
  (set! x (read))
  (cond
    ((= x 0) (display "Usted no hizo nada, despedido")) 
    ((and (<= x 10) (>= x 1)) (begin (display "Debió hacer 20 ventas para una cantidad total de ") (set! y (* 20 3000)) (display y) (newline) (display "Se le entregará ese mismo valor menos 16% por razones legales que en total es: ") (- y (* y 0.16))))
    ((and (>= x 11) (<= x 30)) (begin (display "Debió hacer 60 ventas para una cantidad total de ") (set! y (* 60 3000)) (display y) (newline) (display "Se le entregará ese mismo valor menos 16% por razones legales que en total es: ") (- y (* y 0.16))))
    ((and (>= x 31) (<= x 100)) (begin (display "Debió hacer 60 ventas para una cantidad total de ") (set! y (* 80 3000)) (display y) (newline) (display "Se le entregará ese mismo valor menos 16% por razones legales que en total es: ") (- y (* y 0.16))))
    (else (display "Usted no vendio"))
    )
  )  

;Ejercicio 11
(define (impuesto h imp)
  (display "Programa para generar la cantidad de impuestos ganados
Por favor digite las horas para calcular el pago total de estas, y por la cual se le calcularán los impuestos ganados: ")
  (set! h (read))
  (set! h (* h 20000))
  (cond
    ((<= h 400000) (begin (display "No hay impuestos ganados por pagos totales iguales o menores a 400000") (set! imp (* h 0))))
    ((and (> h 400000) (< h 800000)) (begin (display "El impuesto por valores superiores a 400000 y menores a 800000 es del 15%, por consiguiente son: ") (set! imp (* h 0.15))(display (* h 0.15))))
    ((> h 800000) (begin (display "El impuesto por valores superiores a 800000 es del 28%, por consiguiente son: ") (set! imp (* h 0.28)) (display (* h 0.28))))
    (else (display "Valores incomprendidos"))
   )
  (display "
El pago total es: ")
  (display h)
  (display "
El pago neto es: ")
  (display (pagoNeto h imp))
  )

(define (pagoNeto x y)
  (- x y)
  )

;Ejercicio 12
(define (carpetaDeMusica x)
  (display "Programa para que ingresado un número de una playlist
Digite un pinche número:  ")
  (set! x (read))
  (cond
    ((= x 1) (display "C:/Musica/RAP"))
    ((= x 2) (display "C:/Musica/HEAVY METAL"))
    ((= x 3) (display "C:/Musica/ROCK"))
    ((= x 4) (display "C:/Musica/REGGAETON"))
    ((= x 5) (display "C:/Musica/SALSA"))
    ((= x 6) (display "C:/Musica/VALLENATO"))
    (else (display "Patata"))
    )
  )

;Ejercicio 13
(define (ecuacionCuadratica a b c)
  (display "Programa para saber cuales soluciones tiene una ecuacion cuadratica
Digite los valores del coeficiente a: ")
  (set! a (read))
  (display "
Digite los valores del coeficiente b: ")
  (set! b (read))
  (display "
Digite los valores del coeficiente c: ")
  (set! c (read))
  (cuantos a b c)
  )

(define (cuantos a b c)
  (cond
    ((> (* b b) (* 4 a c)) (display "El problema tiene dos soluciones"))
    ((= (* b b) (* 4 a c)) (display "El problema tiene una solucione"))
    ((< (* b b) (* 4 a c)) (display "El problema no tiene solución"))
    )
  )

;Ejercicio 14
(define (actividadAleatoria a)
  (display "Programa para decirle al usuario que actividad hacer")
  (newline)
  (set! a (random 1 8))
  (cond
    ((= a 1) (display "JUEGA RESIDENT EVIL"))
    ((= a 2) (display "¡PONTE A DORMIR, YA!"))
    ((= a 3) (display "JUEGA WARCRAFT"))
    ((= a 4) (display "SOLO DEDÍCATE A BAILAR"))
    ((= a 5) (display "ESCUCHA MÚSICA"))
    ((= a 6) (display "VE AL CINE"))
    ((= a 7) (display "COMPRA 10 CERVEZAS Y ÉCHATE A VER FÚTBOL 5 HORAS"))
    (else (display "Patata"))
    )
  )

;Ejercicio 15
(define (caraOCruz a b)
  (display "Programa para apostar
Digite una cantidad a apostar, si sale cara ganas el doble, pero si no, pierdes todo: ")
  (set! a (read))
  (set! b (random 1 3))
  (cond
    ((= b 1) (begin (display "Cara, ganas el doble, quedas con: ") (* a 2)))
    ((= b 2) (begin (display "Cruz, pierdes todo, quedas con: ") (* a 0)))
    )
  )

;Ejercicio 16
(define (multiploDeDosYCinco x)
  (display "Programa para saber si el número ingresado es multiplo de 2 y 5, o si es de 2, o si de 5, o si de niguno
Digite el numero: ")
  (set! x (read))
  (calculoMultiplo x)
  )

(define (calculoMultiplo x)
  (cond
    ((and (= (remainder x 2) 0) (= (remainder x 5) 0)) (begin (display "El valor de ") (display x) (display " es multiplo de 2 y 5")))
    ((and (= (remainder x 2) 0) (not (= (remainder x 5) 0))) (begin (display "El valor de ") (display x) (display " es multiplo de 2 pero no de 5")))
    ((and (= (remainder x 5) 0) (not (= (remainder x 2) 0))) (begin (display "El valor de ") (display x) (display " es multiplo de 5 pero no de 2")))
    ((and (not (= (remainder x 2) 0)) (not (= (remainder x 5) 0))) (begin (display "El valor de ") (display x) (display " no es multiplo de 2 ni de 5")))
    (else (display "ERROR"))
    )
  )

;Ejercicio 17
(define (signoZodiacal d m)
  (define a 0)
  (display "Programa para saber que signo zodiacal es usted
Digite el dia de su nacimiento: ")
  (set! d (read))
  (display "
Digite el mes de su nacimiento: ")
  (set! m (read))
  (display "
Digite el año de su nacimiento: ")
  (set! a (read))
  (calculoFechaZodiacal d m)
  )

(define (calculoFechaZodiacal d m)
  (cond
    ((or (and (= m 1)(>= d 20) (<= d 31)) (and (= m 2) (<= d 18))) (display "Su signo zodiacal es Acuario"))
    ((or (and (= m 2)(>= d 19) (<= d 29)) (and (= m 3) (<= d 20))) (display "Su signo zodiacal es Piscis"))
    ((or (and (= m 3) (>= d 21) (<= d 31)) (and (= m 4) (<= d 19))) (display "Su signo zodiacal es Aries"))
    ((or (and (= m 4) (>= d 20) (<= d 30)) (and (= m 5) (<= d 20))) (display "Su signo zodiacal es Tauro"))
    ((or (and (= m 5) (>= d 21) (<= d 31)) (and (= m 6) (<= d 20))) (display "Su signo zodiacales Géminis"))
    ((or (and (= m 6) (>= d 21) (<= d 30)) (and (= m 7) (<= d 22))) (display "Su signo zodiacal es Cáncer"))
    ((or (and (= m 7) (>= d 23) (<= d 31)) (and (= m 8) (<= d 22))) (display "Su signo zodiacal es Leo"))
    ((or (and (= m 8) (>= d 23) (<= d 31)) (and (= m 9) (<= d 22))) (display "Su signo zodiacal es Virgo"))
    ((or (and (= m 9) (>= d 23) (<= d 30)) (and (= m 10) (<= d 22))) (display "Su signo zodiacal es Libra"))
    ((or (and (= m 10) (>= d 23) (<= d 31)) (and (= m 11) (<= d 21))) (display "Su signo zodiacal es Escorpio"))
    ((or (and (= m 11)(>= d 22) (<= d 30)) (and (= m 12) (<= d 21))) (display "Su signo zodiacal es Sagitario"))
    ((or (and (= m 12) (>= d 22) (<= d 31)) (and (= m 1) (<= d 19))) (display "Su signo zodiacal es Capricornio"))
    (else (display "Usted no es de este mundo"))
    )
  )

;;Ejercicio 18 / A partir de que el usuario de un dia, un mes y un año se dará la fecha del dia siguiente; teniendo en cuenta año bisiesto.
(define (fechaDiaSiguiente d m a x)
  (display "Programa por el cual el usuario digitará un dia, un mes y un año, para que se le devuelva la fecha del dia que le sigue
Digite por favor un dia: ")
  (set! d (read))
  (display "
Digite por favor un mes: ")
  (set! m (read))
  (display "
Digite por favor un año: ")
  (set! a (read))
  (if (or (and (= (remainder a 4)0) (not (=(remainder a 100) 0))) (= (remainder a 400) 0))
        (set! x 80)
        (set! x 81)
        )
  (calculoDia d m a x)
  )

(define (calculoDia d m a x)
  (cond
    ((and (>= d 1) (< d 30) (not (= m 2))) (begin (display "el siguiente dia es: ")
                                                  (newline) (display "dia ") (display (+ d 1))
                                                  (newline) (display "mes ") (display m)
                                                  (newline) (display "año ") (display a)))
    ((and (= m 2) (= x 80) (= d 29)) (begin (set! d 1) (set! m 3) (display "el siguiente dia es: ")
                                            (newline) (display "dia ") (display d)
                                            (newline) (display "mes ") (display m)
                                            (newline) (display "año ") (display a)))
    ((and (= m 2) (= x 81) (= d 28)) (begin (set! d 1) (set! m 3) (display "el siguiente dia es: ")
                                            (newline) (display "dia ") (display d)
                                            (newline) (display "mes ") (display m)
                                            (newline) (display "año ") (display a)))
    ((and (= m 2) (= x 80) (not (>= d 30)))  (begin (display "el siguiente dia es: ")
                                                  (newline) (display "dia ") (display (+ d 1))
                                                  (newline) (display "mes ") (display m)
                                                  (newline) (display "año ") (display a)))
    ((and (= m 2) (= x 81) (not (>= d 29))) (begin (display "el siguiente dia es: ")
                                            (newline) (display "dia ") (display (+ d 1))
                                            (newline) (display "mes ") (display m)
                                            (newline) (display "año ") (display a)))
    ((and (or (= m 1) (= m 3)(= m 5)(= m 7)(= m 8)(= m 10))(= m 31)) (begin (set! d 1) (display "el siguiente dia es: ")
                                            (newline) (display "dia ") (display d)
                                            (newline) (display "mes ") (display (+ m 1))
                                            (newline) (display "año ") (display a)))
    ((and (or (= m 4) (= m 6)(= m 9)(= m 11))(= d 30)) (begin (set! d 1) (display "el siguiente dia es: ")
                                            (newline) (display "dia ") (display d)
                                            (newline) (display "mes ") (display (+ m 1))
                                            (newline) (display "año ") (display a)))
    ((and (= d 31) (= m 12)) (begin (set! d 1) (set! m 1) (display "el siguiente dia es: ")
                                            (newline) (display "dia ") (display d)
                                            (newline) (display "mes ") (display m)
                                            (newline) (display "año ") (display (+ a 1))))
    (else (display "estudia el calendario"))
    )
  )

;Ejercicio 19
(define (formato24Horas h m s)
  (display "Programa para saber el segundo siguiente a partir de una hora dada
Digite la hora (recuerde que es formato 24 horas): ")
  (set! h (read))
  (display "Digite los minutos: ")
  (set! m (read))
  (display  "Digite los segundos: ")
  (set! s (read))
  (calculoSegundoSiguiente h m s)
  )

(define (calculoSegundoSiguiente h m s)
  (cond
    ((and (= h 23) (= m 59)(= s 59)) (begin (display "La hora es: ") (set! h 0) (display h)
                                            (newline)(display "El minuto es: ") (set! m 0) (display m)
                                            (newline)(display "El segundo es: ") (set! s 0) (display s)))
    ((and (>= h 0) (<= h 23) (>= m 0) (<= m 58) (= s 59))(begin (display "La siguente hora es: ") (display h)
                                            (newline)(display "El siguiente minuto es: ") (set! m (+ m 1)) (display m)
                                            (newline)(display "El siguiente segundo es: ") (set! s 0) (display s)))
    ((and (>= h 0) (<= h 23) (= m 59) (= s 59))(begin (display "La siguente hora es: ") (set! h (+ h 1)) (display h)
                                            (newline)(display "El siguiente minuto es: ") (set! m 0) (display m)
                                            (newline)(display "El siguiente segundo es: ") (set! s 0) (display s)))
    ((and (>= h 0) (<= h 23) (>= m 0) (<= m 58) (>= s 0) (<= s 58))(begin (display "La siguente hora es: ") (display h)
                                            (newline)(display "El siguiente minuto es: ") (display m)
                                            (newline)(display "El siguiente segundo es: ") (set! s (+ s 1)) (display s)))
    (else (display "ERROR"))
    )
  )