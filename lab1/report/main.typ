#import "template.typ": *

#show: project.with(
  type: "Самостоятельная работа №1",
  // name: "чтото",
  subject: "«Сети и телекоммуникации»",
  authors: (
    (name: "Дорошин Д. А.", 
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
// #show heading.where(level: 3): heading.with(outlined: false)

#show heading: h => block(
  below: 1em,
  h
)

#set page(
  paper: "a4",
  margin: (
    inside: 1.5cm,
    outside: 1.75cm,
    y: 1.75cm,
  ),
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
