(define (func n) (if (< n 3) n (+ (func (- n 1)) 
				  (* 2 (func (- n 2))) 
				  (* 3 (func (- n 3))))))
(func 10)

(define (funco a b c n) (if (< n 3) a
			     (funco (+ a (* 2 b) (* 3 c)) a b (- n 1))
		       ))
(define (f n)
   (if (< n 3)
       n
       (funco 2 1 0 n)))

(f 10)

