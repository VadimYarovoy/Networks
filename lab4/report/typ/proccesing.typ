#import "../preamble.typ": *

== Обработка результатов

Для дальнейшего анализа кодов будем пользоваться двумя критериями:

+ *Избыточность кода*
  \
  Считается по формуле: $I = (n-k) / n$, где
  - *n* - длина блока
  - *k* - информационных бит в блоке

+ *Относительное время передачи файла*
  \
  Считается по формуле: $T_"ф" = (M / k) * n * T * L$, где
  - *n* - длина блока
  - *k* - информационных бит в блоке
  - *М* - число бит в файле
  - *1/Т* - скорость передачи данных
  - *L* - среднее число попыток передачи каждого блока
    - Считается по формуле $L=1 / p_0$, где $p_0 = N_в/N$,  Nв — число
      верно принятых блоков, N – общее число переданных блоков

Для проверки 2 критерия был выбран файл:
#figure()[
  #image("../pics/bits.png", width: 60%)
]

Посмотрим на результыты:

#align(center)[
  #tablex(
    columns: 6,
    fill: (col, row) => if ((row == 1 or row == 5 or row == 10) and col == 5) or ((row == 3 or row == 6 or row == 10) and col == 4) { lime } else { white },

    // align: (col, row) =>
    //   if row == 0 { center }
    //   else { left },
    align: center,
    auto-lines: false,

    hlinex(),
    [P(bit_error)], [n], [k], [t], [Redundancy], [Transmission time ($M * T$)],
    hlinex(),
    rowspanx(3, align: center)[0.05], [15], [5], [3], [0,6666666667], [11,759411],
    hlinex(start: 1),
                                     [31], [16], [3], [0,4838709677], [17,274199],
    hlinex(start: 1),
                                     [63], [45], [3], [0,2857142857], [64,958797],
    hlinex(),
    rowspanx(3, align: center)[0.01], [15], [7], [2], [0,5333333333], [4,520147],
    hlinex(start: 1),
                                     [31], [21], [2], [0,3225806452], [3,657299],
    hlinex(start: 1),
                                     [63], [51], [2], [0,1904761905], [4,219342],
    hlinex(),
    rowspanx(4, align: center)[0.005], [4], [7], [1], [0,4285714286], [3,290728],
    hlinex(start: 1),
                                     [15], [7], [2], [0,5333333333], [4,195002],
    hlinex(start: 1),
                                     [31], [21], [2], [0,3225806452], [3,130269],
    hlinex(start: 1),
                                     [63], [51], [2], [0,1904761905], [3,078141],
    hlinex()
  )
]

- Вероятность ошибки на бит уменьшается с увеличением размера блока при всех значения вероятности ошибки
- Время передачи не имеет однозначной интерпритации

#pagebreak()
