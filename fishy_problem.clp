(defrule jenisIkan
    =>
    (printout t crlf "Jenis ikan yang dibudidaya? [1: Ikan Mas, 2: Ikan Nila, 3: Ikan Gurame]: ")
    (assert (ikan (read)))
)

(defrule ikanMas
    (ikan 1) =>
    (printout t "Ikan Mas" crlf)
)

(defrule ikanNila
    (ikan 2) =>
    (printout t "Ikan Nila" crlf)
)

(defrule ikanGurame
    (ikan 3) =>
    (printout t "Ikan Gurame" crlf)
)

