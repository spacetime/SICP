(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

;Then he evaluates the expression

(test 0 (p))
42
;Applicative order will go into infinite recursion since it will attempt to
;expand the arguments fully before beginning.

;Normal order will not.
