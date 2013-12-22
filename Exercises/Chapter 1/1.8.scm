(define (good-enough? guess x)
  (< (abs (- (* guess guess guess) x)) 0.0001))

(define (improve y x) 
  (/ (+ (/ x 
	   (* y y)) 
	(* 2 y)) 
     3))

(define (cube-root-guess guess x)
  (if (good-enough? guess x) guess 
      (cube-root-guess (improve guess x) x)))

(define (cube-root x)
  (cube-root-guess 1.0 x))

(cube-root 27.0)
