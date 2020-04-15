#lang racket


(define (copiarcadena)

  (define cad (read))
  
  (define cad2 (make-string (string-length cad)))
  
  (copiar cad2 cad 0) 
  
  (display cad2)
  
)

(define (copiar cad2 cad cont)
  
   (if (< cont (string-length cad))
      
      (begin
        
          (string-set! cad2 cont (string-ref cad cont))
        
          (copiar cad2 cad (+ cont 1))
      )

      (display "")
      
    )
)



(copiarcadena)
