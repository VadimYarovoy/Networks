#import "../preamble.typ": *

== Результаты работы модели

Проведем моделирование при всех заданных вероятностях ошибки

=== Вероянность _0.05_
#align(center)[
  #tablex(
    columns: 8,
    fill: (_, row) => if row == 4 or row == 7 or row == 10 { lime } else { white },
    align: (col, row) =>
      if row == 0 { center }
      else { left },
    auto-vlines: false,

    [n], [P(bit_error)], [Polinom], [Correct], [Fixed], [Passed], [Total], [Errate],
    [$7$], [$0.05$], [$[3;1;0]$], [$89814$], [$38619$], [$100$], [$128533$], [$0.000778$], 

    [$15$], [$0.05$], [$[4;1;0]$], [$16976$], [$19897$], [$100$], [$36973$], [$0.002705$], 
    [$15$], [$0.05$], [$[8;7;6;4;0]$], [$462488$], [$537511$], [$1$], [$1000000$], [$1.0e-6$],
    [$15$], [$0.05$], [$[10;8;5;4;2;1;0]$], [$463115$], [$536885$], [$0$], [$1000000$], [$<1.0e-6$], 
 

    [$31$], [$0.05$], [$[5;2;0]$], [$3642$], [$13574$], [$100$], [$17316$], [$0.005775$], 
    [$31$], [$0.05$], [$[10;9;8;6;5;3;0]$], [$204174$], [$795812$], [$14$], [$1000000$], [$1.4e-5$], 
    [$31$], [$0.05$], [$[15;11;10;9;8;7;5;3;2;1;0]$], [$203609$], [$796391$], [$0$], [$1000000$], [$<1.0e-6$], 
 
    [$63$], [$0.05$], [$[6;1;0]$], [$385$], [$9976$], [$100$], [$10461$], [$0.009559$], 
    [$63$], [$0.05$], [$[12;10;8;5;4;3;0]$], [$41772$], [$958167$], [$61$], [$1000000$], [$6.1e-5$], 
    [$63$], [$0.05$], [$[18;17;16;15;9;7;6;3;2;1;0]$], [$39124$], [$960876$], [$0$], [$1000000$], [$<1.0e-6$], 
  )
]

=== Вероянность _0.01_
#align(center)[
  #tablex(
    columns: 8,
    fill: (_, row) => if row == 3 or row == 5 or row == 7 { lime } else { white },

    align: (col, row) =>
      if row == 0 { center }
      else { left },
    auto-vlines: false,

    [n], [P(error)], [Polinom], [Correct], [Fixed], [Passed], [Total], [Errate],
    [$7$], [$0.01$], [$[3;1;0]$], [$932039$], [$67954$], [$7$], [$1000000$], [$7.0e-6$], 

    [$15$], [$0.01$], [$[4;1;0]$], [$859676$], [$140295$], [$29$], [$1000000$], [$2.9e-5$], 
    [$15$], [$0.01$], [$[8;7;6;4;0]$], [$860585$], [$139415$], [$0$], [$1000000$], [$<1.0e-6$], 

    [$31$], [$0.01$], [$[5;2;0]$], [$605694$], [$221378$], [$100$], [$827172$], [$0.000121$], 
    [$31$], [$0.01$], [$[10;9;8;6;5;3;0]$], [$732715$], [$267285$], [$0$], [$1000000$], [$<1.0e-6$], 

    [$63$], [$0.01$], [$[6;1;0]$], [$117787$], [$103878$], [$100$], [$221765$], [$0.000451$], 
    [$63$], [$0.01$], [$[12;10;8;5;4;3;0]$], [$531470$], [$468530$], [$0$], [$1000000$], [$<1.0e-6$], 
  )
]

=== Вероянность _0.005_
#align(center)[
  #tablex(
    columns: 8,
    fill: (_, row) => if row == 1 or row == 3 or row == 5 or row == 7 { lime } else { white },
    align: (col, row) =>
      if row == 0 { center }
      else { left },
    auto-vlines: false,

    [n], [P(error)], [Polinom], [Correct], [Fixed], [Passed], [Total], [Errate],
    [$7$], [$0.005$], [$[3;1;0]$], [$965382$], [$34618$], [$0$], [$1000000$], [$<1.0e-6$], 

    [$15$], [$0.005$], [$[4;1;0]$], [$927400$], [$72596$], [$4$], [$1000000$], [$4.0e-6$], 
    [$15$], [$0.005$], [$[8;7;6;4;0]$], [$927287$], [$72713$], [$0$], [$1000000$], [$<1.0e-6$], 

    [$31$], [$0.005$], [$[5;2;0]$], [$856328$], [$143653$], [$19$], [$1000000$], [$1.9e-5$], 
    [$31$], [$0.005$], [$[10;9;8;6;5;3;0]$], [$856079$], [$143921$], [$0$], [$1000000$], [$<1.0e-6$],

    [$63$], [$0.005$], [$[6;1;0]$], [$728809$], [$271121$], [$70$], [$1000000$], [$7.0e-5$], 
    [$63$], [$0.005$], [$[12;10;8;5;4;3;0]$], [$728509$], [$271491$], [$0$], [$1000000$], [$<1.0e-6$], 
  )
]

#pagebreak()