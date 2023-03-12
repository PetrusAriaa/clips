(defrule Sencor1
    (weed B)
    (crop C|S)
    (organicMatter 1) =>
    (printout t crlf "Do not use Sencor" crlf)
)

(defrule Sencor1
    (weed B)
    (crop C|S)
    (organicMatter 2|3) =>
    (printout t crlf "Use 3/4 pt/ac of Sencor" crlf)
)

(defrule Lasso1
    (weed B|G)
    (crop C|S)
    (organicMatter 1) =>
    (printout t crlf "Use 2 pt/ac of Lasso" crlf)
)

(defrule Lasso2
    (weed B|G)
    (crop C|S)
    (organicMatter 2) =>
    (printout t crlf "Use 1 pt/ac of Lasso" crlf)
)

(defrule Lasso3
    (weed B|G)
    (crop C|S)
    (organicMatter 3) =>
    (printout t crlf "Use 0.5 pt/ac of Lasso" crlf)
)

(defrule Bicep1
    (weed B|G)
    (crop C)
    (organicMatter 1) =>
    (printout t crlf "Use 1.5 pt/ac of Bicep" crlf)
)

(defrule Bicep2
    (weed B|G)
    (crop C)
    (organicMatter 2) =>
    (printout t crlf "Use 2.5 pt/ac of Bicep" crlf)
)

(defrule Bicep3
    (weed B|G)
    (crop C)
    (organicMatter 3) =>
    (printout t crlf "Use 3 pt/ac of Bicep" crlf)
)

(defrule input
    =>
    (printout t crlf "What is the crop? [C: corn, S: soybean]")
    (assert (crop (read)))
    (printout t crlf "What is the weed problem? [B: broadleaf, G: grass]")
    (assert (weed (read)))
    (printout t crlf "What is the percentage of organic matter content? [1: <2%, 2: 2-4%, 3: > 4%]")
    (assert (organicMatter (read)))
    (printout t crlf "RECOMMENDATION: " crlf)
)