(define f (lambda (x y) (* y x)))

(define media (lambda (x y z) (/ (+ x y z) 3)))

;(define quadrado (lambda (x) (* x x)))
;(define pi)
;(define circunferencia (lambda (3.14 quadrado) (* 3.14 quadrado)))

;(let ((x 10) (y 5)) (* (+ x y) (- x y)))

(define pi 3.1415927)
(define circunferencia (lambda (pi raio) (* (* raio raio) pi)))
(define perimetro (lambda (pi raio) (+ (+ pi raio) 2)))

(let ((altura 2) (base 5)) (/ (* base altura ) 2))

(define dobro (lambda (x) (* 2 x)))
(define quadrado (lambda (x) (* x x)))
(define incrementa1 (lambda (x) (+ x 1)))
(define decrementa1 (lambda (x) (- x 1)))
(define f (lambda (x y) (+ x y)))
(define f_constante (lambda (x) (+ x 0)))

;f(x,y) = 2x + 5y 
(define poli_grau2 (lambda (x y) (+ (* 2 x) (* 5 y))))

;f(x,y,z) = 10x + 5y - z
(define poli_grau3 (lambda (x y z) (- (+ (* 10 x) (* 5 y)) z)))

;f(x) = (sin x)2+ (cos x)2
(define f_trig (lambda (x) (+ (* (sin x) (sin x)) (* (cos x) (cos x)))))
 
;f(n) = n * (n - 1) / 2
(define f_n (lambda (n) (/ (* (- n 1) n) 2)))

;(car (cdr '(A B C)))
;uma funçãoque retorne o segundo elemento de uma dada lista
(define list '(1 2 3 4 5))
(define pos2 (lambda (list) (car (cdr list))))

;uma funçãoque retorne o terceiro elemento de uma dada lista
(define pos3 (lambda (list) (car(cdr (cdr list)))))

;uma funçãoque receba uma lista de n?s e retorne a soma do primeiro com o
;segundo elemento
;(define soma (lambda (list) (car list)))
(define soma (lambda (list) (car (cdr list))))

;uma funçãoque receba dois valores e retorne uma lista com esses valores

