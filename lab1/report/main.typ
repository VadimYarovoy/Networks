#import "template.typ": *

#show: project.with(
  type: "Самостоятельная работа №1",
  // name: "чтото",
  subject: "«Сети и телекоммуникации»",
  authors: (
    (name: "Яровой В. Д", 
    group: "5130904/00104",
    tutor: "Медведев Б. М."),
  ),
  abstract: none
)

#show raw.where(block: true): block.with(
  width: 100%,
  fill: luma(240),
  inset: 10pt,
  radius: 4pt,
  stroke: black,
  breakable: true
)

#set heading(numbering: "1.1")

// задание
#include "typ/task.typ"
#pagebreak()

// результаты измерений
#include "typ/data.typ"
#pagebreak()

// всякие вычисления
#include "typ/calcs.typ"
#pagebreak()

// вывод
#include "typ/conc.typ"
