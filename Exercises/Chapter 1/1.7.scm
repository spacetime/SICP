(define (square x) (* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? improved_guess guess x)
  (< (/ (abs (- improved_guess  guess)) x) 0.00001))

(define (sqrt-iter guess x)
  (if (good-enough? (improve guess x) guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (sqrt2 x)
  (sqrt-iter 1.0 x))

(sqrt 0.0001)
(sqrt2 0.0001)

