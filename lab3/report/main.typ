#import "template.typ": *

#show: project.with(
  type: "Самостоятельная работа №3",
  // name: "чтото",
  subject: "«Сети и телекоммуникации»",
  authors: (
    (name: "Яровой В. Д.", 
    group: "5130904/00104",
    tutor: "Медведев Б. М."),
  ),
  abstract: none
)

// #show: project.with(
//   type: "Самостоятельная работа №3",
//   // name: "чтото",
//   subject: "«Сети и телекоммуникации»",
//   authors: (
//     (name: "Дорошин Д. А.", 
//     group: "5130904/00104",
//     tutor: "Медведев Б. М."),
//   ),
//   abstract: none
// )

// #show: project.with(
//   type: "Практическая работа №3",
//   // name: "чтото",
//   subject: "«Сети и телекоммуникации»",
//   authors: (
//     (name: "Ферапонтов М. В.", 
//     group: "5130904/00104",
//     tutor: "Медведев Б. М."),
//   ),
//   abstract: none
// )

// #show: project.with(
//   type: "Практическая работа №3",
//   // name: "чтото",
//   subject: "«Сети и телекоммуникации»",
//   authors: (
//     (name: "Савчук А. А.", 
//     group: "5130904/00104",
//     tutor: "Медведев Б. М."),
//   ),
//   abstract: none
// )

#show raw.where(block: true): block.with(
  width: 100%,
  fill: luma(240),
  inset: 10pt,
  radius: 4pt,
  stroke: black,
  breakable: true
)

#set heading(numbering: "1.1")

// Задание и цель
#include "typ/task.typ"

= Основная часть
#include "typ/schema.typ"
#include "typ/data_gen.typ"
#include "typ/tx.typ"
#include "typ/channel.typ"
#include "typ/rx.typ"
#include "typ/ber.typ"
#include "typ/error_rate.typ"

// Задание и цель
#include "typ/conc.typ"
