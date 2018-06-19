1. Crie uma função para calcular a potência de 2 números.
(define potencia
  (lambda (m n)
    (if (= n 0) 1
    (* m (potencia m (- n 1))))
  )
)



2. Imprima a quantidade de "zeros" expressa por um número.
(define zero
  (lambda (m)
    (if( = m 0) ()
    (cons 0 (zero (- m 1))))
  )
)

3. Dada uma lista de números, calcule o quadrado de cada um.
(define quadrado
  (lambda (x)
    (* x x)
  )
)

(define quadradoElementosLista
  (lambda (lista)
    (if (null? lista) ()
    (cons (quadrado (car lista)) (quadradoElementosLista (cdr lista)))) 
  )
)

4. Imprima a maior String de uma lista de Strings.
(define maiorString 
  (lambda (str1 str2)
    (if (< (string-lengt str1) (string-lengt str2)) str2 str1)
  )
)

(define maiorNaLista
  (lambda (lista)
    (if (null? (cdr lista))
        (car lista) 
        (maiorString (car lista)
        (maiorNaLista (cdr lista))))
  )
)



 

