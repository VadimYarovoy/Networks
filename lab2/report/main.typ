#import "template.typ": *

#show: project.with(
  type: "Самостоятельная работа №2",
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

#include "typ/task.typ"

= Основная часть

#include "typ/ofmfs.typ"
#include "typ/ofmdiag.typ"
#include "typ/rxfs.typ"
#include "typ/rxdiag.typ"
#include "typ/errate.typ"
#include "typ/conc.typ"
