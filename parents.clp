; Facts:
(deffacts families
    (father tom john) ;tom is john's father
    (mother susan john) ;susan is john's mother
    (father george tom) ;george is tom's father
)

; Rules:
(defrule parentRule
    (or (father ?x ?y) (mother ?x ?y)) =>
    (assert (parent ?x ?y))
    (assert (child ?y ?x))
)

(defrule grandParentRule
    (and (parent ?x ?z) (parent ?z ?y)) =>
    (assert (grandparent ?x ?y))
)

(defrule parentInLaw
    (and (parent ?x ?y) (father ?y ?z) (mother ?m ?z)) =>
    (assert (parentInLaw ?x ?m))
)