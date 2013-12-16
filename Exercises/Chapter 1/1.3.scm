(define (square x) (* x x))
(define (sum-of-squares x y) (+ (square x) 
				(square y)))
(define (larger x y) (if (>= x y) x y))
(define (largest x y z) (larger (larger x y) z))

(define (sum-of-largest-squares x y z) (cond ((= (largest x y z) x) 
					      (sum-of-squares x (larger y z)))
					     ((= (largest x y z) y) 
					      (sum-of-squares y (larger x z)))
					     (else 
					      (sum-of-squares z (larger x y)))))
;(sum-of-largest-squares 4 5 6)
