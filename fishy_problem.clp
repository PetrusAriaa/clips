(defrule jenisIkan
    =>
    (printout t crlf "Jenis ikan yang dibudidaya? [M: Ikan Mas, N: Ikan Nila, G: Ikan Gurame]: ")
    (assert (ikan (read)))
)

(defrule ikanMas
    (ikan M) =>
    (printout t "Bagaimana kondisi tubuh ikan? [1: Bercak putih, 2: Bercak merah]: ")
    (assert (kulit (read)))
    (printout t "Bagaimana kondisi mata ikan? [1: normal, 2: berkabut]: ")
    (assert (mata (read)))
    (printout t "Bagaimana aktivitas atau gerakan ikan? [1: normal, 2: malas/bergerak lambat]: ")
    (assert (gerakan (read)))
    (printout t crlf "=== KESIMPULAN KONDISI IKAN ===" crlf)
)

(defrule ikanNila
    (ikan N) =>
    (printout t "Bagaimana kondisi tubuh ikan? [1: Bercak putih, 2: Bercak merah, 3: Kehitaman]: ")
    (assert (kulit (read)))
    (printout t "Bagaimana kondisi mata ikan? [1: normal, 2: bengkak]: ")
    (assert (mata (read)))
    (printout t "Bagaimana aktivitas atau gerakan ikan? [1: normal, 2: malas/bergerak lambat]: ")
    (assert (gerakan (read)))
    (printout t crlf "=== KESIMPULAN KONDISI IKAN ===" crlf)
)

(defrule ikanGurame
    (ikan G) =>
    (printout t "Bagaimana kondisi tubuh ikan? [1: Bercak putih, 2: Bercak merah, 3: bentol]: ")
    (assert (kulit (read)))
    (printout t "Bagaimana kondisi mata ikan? [1: normal, 2: berkabut]: ")
    (assert (mata (read)))
    (printout t "Bagaimana aktivitas atau gerakan ikan? [1: normal, 2: malas/bergerak lambat]: ")
    (assert (gerakan (read)))
    (printout t crlf "=== KESIMPULAN KONDISI IKAN ===" crlf)
)


; DIAGNOSE SYMPTOMS
(defrule saprolegniasis
    (and (ikan M)
    (kulit 1)
    (mata 1|2)
    (gerakan 2)) =>
    (assert (diagnosis saprolegniasis))
    (printout t "Ikan terindikasi terjangkit saprolegniasis" crlf)
)

(defrule whiteSpot
    (or (and (ikan M) (kulit 1) (gerakan 1) (mata 1|2))
        (and (ikan N|G) (kulit 1) (gerakan 1|2) (mata 1))
    ) =>
    (assert (diagnosis whiteSpot))
    (printout t "Ikan terindikasi terjangkit white spot" crlf)
)

;TODO: bikin ikanMas -> aeromonas





