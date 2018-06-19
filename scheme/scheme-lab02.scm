; 01.Crie um programa Scheme para adicionar o valor `1` a cada elemento de uma lista.
(define add1
	(lambda (lista)
		(if (null? lista) ()
		(cons (+ 1 (car lista)) (add1 (cdr lista))))
	)
)

; 02.Crie um programa Scheme para inluir um valor ao final de uma lista.
(define add-valor-final
	(lambda (valor lista)
		(cond ((null? lista) (list valor))
		(else (cons (car lista) 
      (add-valor-final valor (cdr lista)))))
	)
)

; 03.Crie um programa Scheme para retornar a posição de um elemento em uma lista, iniciando da posição 0.
(define posicao
	(lambda (elemento lista)
		(if (null? lista) ()
    (if (= elemento 0) (car lista) 
      (posicao (- elemento 1) (cdr lista))))
	)
)

; 04.Crie um programa Scheme que recebe uma lista e retorna a média dos seus elementos.
(define qtd-elementos
	(lambda (lista)
		(if (null? lista) 0
		(+ 1 (qtd-elementos (cdr lista))))
	)
)

(define soma
	(lambda (lista)
		(if (null? lista) 0
		(+ (car lista) (soma (cdr lista))))
	)
)

(define media
	(lambda (lista)
		(/ (soma lista) (qtd-elementos lista))
	)
)

; 05. Faça um programa para inserir os números de 1 .. N em uma lista, passando N como parâmetro.
(define sequencia
  (lambda (n)
    (if (= m 0) ()
    (cons 0 (zero (- m 1))))
  )
)



; 06. Crie uma função para retornar a interseção de duas listas.

; 07. Crie uma função para calcular a união de duas listas.
