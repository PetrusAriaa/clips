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
)

(defrule grandParentRule
    (and (parent ?x ?y) (parent ?y ?z)) =>
    (assert (grandparent ?x ?z))
)

(defrule grandfather
    (and (father ?x ?y) (parent ?y ?z)) =>
    (assert (grandfather ?x ?z))
)