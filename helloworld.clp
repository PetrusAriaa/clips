(defrule basic
    =>
    (printout t "Hello World!" crlf)
)

(defrule basic2
    (is_duck yes) =>
    (printout t "this is a duck!" crlf)
)