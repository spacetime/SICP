(define (denomination cointypes)
  (cond ((= cointypes 1) 1)
	((= cointypes 2) 5)
	((= cointypes 3) 10)
	((= cointypes 4) 25)
	((= cointypes 5) 50)))

(define (changeify amount cointypes) (if (= amount 0) 1 
					 (if (or (< amount 0) (= cointypes 0)) 0 
					     (+ (changeify amount (- cointypes 1)) (changeify (- amount (denomination cointypes)) cointypes)))))
(changeify 100 5)

