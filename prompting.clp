(defrule grandfather
    (is_grandfather ?name) =>
    (assert (is_father ?name))
    (assert (is_parent ?name))
    (printout t ?name " is a grandfather" crlf)
)