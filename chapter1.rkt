#lang plai-typed

(define-type MisspelledAnimal
    [caml (humps : number)]
    [yacc (height : number)])


(define (good? [ma : MisspelledAnimal]) : boolean
  (type-case MisspelledAnimal ma
    [caml (humps) (>= humps 2)]
    [yacc (height) (> height 2.1)]))

(define ma1 (caml 2))
(define ma2 (yacc 1.9))

(test (good? ma1) #t)
(test (good? ma2) #f)