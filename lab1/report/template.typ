#let project(
  type: "",
  // name: "",
  subject: "",
  abstract: [],
  authors: (),
  logo: none,
  body
) = {
  // Set the document's basic properties.
  set document(author: authors.map(a => a.name), title: type)
  set text(font: "Liberation Serif", lang: "ru")
  show math.equation: set text(weight: 400)
  set heading(numbering: none)
  set par(justify: true)
  set page(paper: "a4", margin: (left:3cm, right:1.5cm, top:2cm, bottom:2cm),
)



  // v(0.0fr)
  align(center)[
    #text(1.25em, weight: 200, "Санкт-Петербургский политехнический университет Петра Великого") \
    #text(1.25em, weight: 200, "Институт компьютерных наук и кибербезопасности") \
    #text(1.25em, weight: 200, "Высшая школа программной инженерии")
  ]

  // Title page.
  v(8cm)
  align(center)[
    #text(2em, weight: 500, type) \
    // #v(0.1cm)
    #text(1.15em, weight: 100, "по дисциплине")
    #text(1.15em, weight: 100, subject)
  ]

  
  //Author information.
  v(5cm)
  pad(
    // top: 0.7em,
    
    grid(
      gutter: 27em,
      columns: 1,
      ..authors.map(author => align(left)[
        #text("Выполнил: ") #h(1fr) #text(1.1em, author.name) \
        #text("Группа:") #h(1fr) #text(1.1em, author.group) \
        \
        #text("Проверил: ") #h(1fr) #text(1.1em, author.tutor)
      ]),
    ),
  )

  v(1fr)
  align(center)[
    #text(1.25em, weight: 200, "Санкт-Петербург \n 2023")
  ]
  
  pagebreak()

  // Table of contents.
  outline(depth: 3, indent: true, title: "Содержание")
  pagebreak()

  // Main body.
  set page(numbering: "1", number-align: center)
  set par(first-line-indent: 20pt)
  counter(page).update(1)

  body
}


