(+ 2 3)

(/ 8 2)

(+ (* 4 2) (* 3 8))

(* 2 (+ 4 3))

(* (+ 2 4) 3)

(* 9 (- 5 2))

(sin 3.1415)

(+ 1 2 3)

(+ 1 2 3 4 5 6 7 8 9)

(* 1 2 3 4 5 6 7 8 9)

(- (+ 1 2 3 4 5) 6)

(* (+ 2 4) (+ 3 5))

(* (- 9 5) (- 8 3)) 

(+ (/ 9 3) (* 3 2)) 

(+ (sin 4.5) (cos 3.7))

(+ (log 4.5) (log 3.2))

(/ 4 2)

(/ 5 2)

(/ 1 2)

(mod 1 2)

(mod 20 3)

(- (/ 5 2) (/ 5 2))

(+ (* (/ 1345 17) 17) (mod 1345 17))

(quote a)

(quote (+3 5))

(quote (sin (+ 3.45 (* 5.65 23.4))))

(quote (mesa cadeira piso))

(define pi 3.1415927)

(define raio 1.5)

(define area (* pi (* raio raio)))

(define nome "Pika das Galáxyas")

(define a +)

(let ((x 10) (y 5)) (* (+ x y) (- x y)))

(let ((x (sin 5))) (* x x))

(+ 10 (let ((x (sin 5))) (* x x)))

(let ((x 10)) (let ((y (+ x 5))) (* x y)))

(cons 2 '())

(cons 1 (cons 2 '()))

(cons "leonardo" (cons "anjos" '()))

(cons 'China '(Uruguai Grecia))

(cons '() '(a b c))

(cons '(a b c) '(d))

(let ((x 'Paris) (y '(Roma Berlin))) (cons x y))

(let ((x 'Paris) (y '(Roma Berlin))) (cons 'x y))

(let ((n '())) (cons (cons 3 n) n))

(cons 2 (let ((x '())) (cons x x)))

(let ((x '(y z))) (cons 'x x))

(cons 2 '(2 5 6))

(car '(5 8 9))

(car '(leonardo anjos))

(car '(leonardo))

(let ((l '(lua sol marte))) (cdr l))

(let ((l '(lua sol marte))) (car (cdr l)))

(let ((l '(lua sol marte))) (car (cdr (cdr l))))

(let ((lista '((a1 b1) (a2 b2) (a3 b3)))) (car (cdr (car lista))))

(define f (lambda (x) (* 2 x)))

((lambda (x y) 10) 3 (* 8 3))

((lambda (x y) (let ((z x)) (+ z y))) 15 23)

((lambda (x) (* x x)) (let ((x 2)) (+ x 4)))

(((lambda (x) (lambda (y) (- x y))) 4) 5)

(let ((l '(()))) (null? (car l)))

(let ((x (* 8 5))) (= x 40))

(let ((x 'abobora)) (equal? x 'abobora))

((lambda (x) (equal? x "Jose")) "Jose")

((lambda (x y) (= x y)) 1 1.0)






