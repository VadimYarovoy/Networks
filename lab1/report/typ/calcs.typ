#import "../preamble.typ": *

= Обработка результатов
== Расчет ожидаемой мощности сигнала

Мощность сигнала на входе приемника в логарифмическом
масштабе по отношению к измерительному уровню 1 мВт (записывается
как дБм):

$ P_r = P_t - P L(d) ", dBm" $

где мощность сигнала на выходе передатчика $P_t$ задана в дБм.

\
Модели для вычисления затухания:
- *2G* \
  Формула для расчета затухания сигнала в условиях
  города записывается следующим образом 
  $ 
    P L(d) = 46.3  + 33.9 lg(f_c) - 13.82 lg(h_(t e)) - a(h_(r e)) + \
    + (44.9 - 6.55 lg(h_(t e))) lg(d) + C_m ", dB"
  $

  $a(h_(r e))$ – корректирующий фактор для эффективной высоты
  мобильной антенны, который является функцией величины зоны
  обслуживания.
  
  \
  Для крупных городов:

  $
    &a(h_(r e)) = 3.2 (lg(11.75 h_(r e)))^2 - 4.97 ", dB" \
    &C_m = 3 ", dB" 
  $


  *Входные данные*:
  #align(center)[
    #tablex(
      align: center,
      columns: 8,
      auto-vlines: false,
      [Место], [$f_c$ (МГц)], [$h_(t e)$ (м)], [$h_(r e)$ (м)], [$d$ (км)], [$C_m$ (дБ)], [$P_t$ (дБм)], [$P_("crit")$ (дБм)],
      [1],     [960], [30], [10], [0.1564], [3], [43], [100],
      [2],     [960], [30], [10], [0.1534], [3], [43], [100],
      [3],     [960], [30], [10], [0.1594], [3], [43], [100],

    )
  ]

- *3G* \
  Модель потерь на трассе внутри помещения (в логарифмическом
  масштабе, дБ) представлена в следующей упрощенной форме, которая
  получена из модели COST внутри помещения:
  $ P L(d) = 37 + 30 lg(d) + 18.3 n^(((n + 2) / (n + 1) - 0.46)) ", dB" $

  Где:
  + d – расстояние между передатчиком и приемником (м),
  + n – количество этажей на пути.

  *Входные данные*:

  #align(center)[
    #tablex(
      align: center,
      columns: 5,
      auto-vlines: false,
      [Место], [$d$ (м)], [$n$], [$P_t$ (дБм)], [$P_("crit")$ (дБм)],
      [1], [156.4], [0], [43], [100],
      [2], [153.4], [0], [43], [100],
      [3], [159.4], [0], [43], [100],

    )
  ]

- *4G* \
  Для случая отсутствия прямой видимости расчет затухания сигнала
  в 3D-UMа учитывает характеристики городской среды:
  $
    &P L_(3D-U M a-N L O S) = 161.04 - 7.1 lg(W) + 7.5 lg(h) - (24.37 - 3.7(h / h_(B S))^2) \
    &lg(h_(B s)) + (43.42 - 3.1 lg(h_(B S))) (lg(d_(3 D)) - 3) + 20 lg(f_c) - \
    &- (3.2 (lg(17.625))^2 - 4.97) - 0.6 (h_(U T) - 1.5) ", dB"
  $
  
  где расстояние $d_(3 D)$ измеряется в метрах, частота сигнала $f_c$ – в ГГц,
  $h$ – средняя высота зданий в диапазоне $5 м < h < 50 м$, типовое
  значение $h = 20 м$,
  $W$ – ширина улицы в диапазоне $5 м < W < 50 м$, типовое значение W 20 м,
  типовое значение $h_(B S) = 25 м$ и $10 м < h_(B S) < 150 м$,
  $1.5 м ≤ h_(U T) ≤ 22.5 м$,

  \
  *Входные данные*:

  #align(center)[
    #tablex(
      align: center,
      columns: 9,
      auto-vlines: false,
      [Место], [$f_c$ (ГГц)], [$h$ (м)], [$W$ (м)], [$d$ (м)], [$h_(B S)$ (м)], [$h_(U T)$ (м)], [$P_t$ (дБм)],  [$P_("crit")$ (дБм)],
      [1],     [2.6], [25], [20], [156.4], [30], [17.5], [43], [100],
      [2],     [2.6], [25], [20], [153.4], [30], [17.5], [43], [100],
      [3],     [2.6], [25], [20], [159.4], [30], [17.5], [43], [100],

    )
  ]

#pagebreak()

Полученные мощности и сравнение с измеренными значениями:

#align(center)[
    #tablex(
    columns: 13,
    align: center + horizon,
    auto-vlines: false,
    header-rows: 2,

    /* --- header --- */
    [], colspanx(4)[*Место 1*], colspanx(4)[*Место 2*], colspanx(4)[*Место 3*],
    [], colspanx(2)[*Эксперимент*], colspanx(2)[*Расчет*], colspanx(2)[*Эксперимент*], colspanx(2)[*Расчет*], colspanx(2)[*Эксперимент*], colspanx(2)[*Расчет*],
    /* -------------- */

    [*2G*]  , [$-63$], [dBm], [$-64$], [dBm], [$-59$], [dBm], [$-64$], [dBm], [$-65$], [dBm], [$-65$], [dBm],
    [*3G*]  , [$-81$], [dBm], [$-74$], [dBm], [$-83$], [dBm], [$-74$], [dBm], [$-78$], [dBm], [$-75$], [dBm],
    [*4G*]  , [$-81$], [dBm], [$-73$], [dBm], [$-94$], [dBm], [$-72$], [dBm], [$-89$], [dBm], [$-73$], [dBm],
    [*Wi-Fi*], [$-53$], [dBm], [$-53$], [dBm], [$-85$], [dBm], [$-75$], [dBm], [$-61$], [dBm], [$-66$], [dBm],
    )
]

Сравним результаты расчета мощности сигнала на входе приемника с измерениями.

- *2G* - формула была использована неправильно, так как расстояние до базовой станции было меньше 1 км, но расхождения оказались приемлемыми
- *3G* - расхождения допустимы
- *4G* - расхождение оказалось верным для 1 из 3 мест, для двух оставшихся формула оказалась неверной (расхождение более 10 dBm). Причиной таких отклонений может быть плохая модель условий среды (начличие стен, деревьев на пути сигнала).

#pagebreak()
== Определение вероятности нахождения телефона в зоне уверенного приема

- *2G* \
  Стандартное отклонение 12 дБ. \
  Вероятность нахождения телефона в зоне уверенного приема $P_("2G") = 0.999$
  


- *3G* \
  Стандартное отклонение 12 дБ. \
  Вероятность нахождения телефона в зоне уверенного приема $P_("3G") = 0.944$


- *4G* \
  Стандартное отклонение 6 дБ. \
  Вероятность нахождения телефона в зоне уверенного приема $P_("4G") = 0.936$

Чем современнее сеть тем она более хрупкая, как аргумент можно привести то, что для новых поколений сети мощьность сигнала должна быть больше, чтобы обеспечить уверенный прием $> 90%$ пакетов.

#pagebreak()
== Обработка скорости

Выпишем скорости загрузок из эксперементов

#align(center)[
    #tablex(
    columns: 11,
    align: center + horizon,
    auto-vlines: false,
    header-rows: 1,

    /* --- header --- */
    [], colspanx(2)[*1*], colspanx(2)[*2*], colspanx(2)[*3*], colspanx(2)[*4*], colspanx(2)[*5*],
    /* -------------- */

    [*2G*], [$0.13$], [Mbs], [$0.13$], [Mbs], [$0.10$], [Mbs], [$0.12$], [Mbs], [$0.13$], [Mbs], 
    [*3G*], [$1.8$ ], [Mbs], [$1.6$ ], [Mbs], [$4.4$ ], [Mbs], [$5.5$ ], [Mbs], [$5.1$ ], [Mbs], 
    [*4G*], [$25.9$], [Mbs], [$55.3$], [Mbs], [$99.2$], [Mbs], [$81.3$], [Mbs], [$74.4$], [Mbs], 
    )
]

Определим среднюю скорость передачи и диапазон изменения
скорости для всех режимов работы. Также приведем типовые значения 

#align(center)[
    #tablex(
    columns: 9,
    align: center + horizon,
    auto-vlines: false,
    header-rows: 1,

    /* --- header --- */
    [],  colspanx(2)[*Диапазон*], colspanx(2)[*Средняя\ скорость*], colspanx(2)[*Макс.\ скорость *], colspanx(2)[*Типовое\ значение*],
    /* -------------- */

    [*2G*], [$0.10-0.13$], [Mbs], [$0.122$], [Mbs], [$0.3$], [Mbs], [$0.1$], [Mbs],
    [*3G*], [$1.6-5.5$  ], [Mbs], [$3.68$], [Mbs], [$21$ ], [Mbs], [$4$  ], [Mbs],
    [*4G*], [$25.9-99.2$], [Mbs], [$67.22$], [Mbs], [$300-450$], [Mbs], [$30-45$ ], [Mbs],
    )
]

Итого:
- *2G* - соответствует типовому значению, значения скорости остается примерно неизменным во всех эксперементах
- *3G* - соответствует типовому значению, значения скорости немного отличается между эксперементами, можно сказать что это погрешность, или же влияние некорректно принятых пакетов и их повторный запрос (то есть качество сети)
- *4G* - в среднем превосходит типовое значение, значения скорости отличается между эксперементами, сеть является самой используемой в текущий момент времени, поэтому ресурсы сети напрямую зависят от кол-ва подключенных пользователей и качества сигнала и потеренных пакетов, более того можно предположить что происходит переключение категорий LTE cat, что также влияет на скорость передачи данных, предположительно - LTE $c a t 6"/"c a t 9$

#pagebreak()
== Обработка задержки

Выпишем задержки загрузок из эксперементов


#align(center)[
    #tablex(
    columns: 11,
    align: center + horizon,
    auto-vlines: false,
    header-rows: 1,

    /* --- header --- */
    [], colspanx(2)[*1*], colspanx(2)[*2*], colspanx(2)[*3*], colspanx(2)[*4*], colspanx(2)[*5*],
    /* -------------- */

    [*2G*], [$183$], [ms], [$197$], [ms], [$394$], [ms], [$234$], [ms], [$194$], [ms], 
    [*3G*], [$32 $], [ms], [$35 $], [ms], [$28 $], [ms], [$31 $], [ms], [$29 $], [ms], 
    [*4G*], [$47 $], [ms], [$47 $], [ms], [$57 $], [ms], [$43 $], [ms], [$44 $], [ms], 
    )
]

Определим среднюю задержку передачи и диапазон
изменения задержки для всех режимов работы.

#align(center)[
    #tablex(
    columns: 7,
    align: center + horizon,
    auto-vlines: false,
    header-rows: 1,

    /* --- header --- */
    [],  colspanx(2)[*Диапазон*], colspanx(2)[*Средняя\ задержка*],  colspanx(2)[*Типовое\ значение*],
    /* -------------- */

    [*2G*], [$183-394$], [ms], [$240.4$], [ms],  [$500$], [ms],
    [*3G*], [$28-35$  ], [ms], [$31$   ], [ms],  [$100$], [ms],
    [*4G*], [$43-57$  ], [ms], [$47.6$], [ms],  [$50$ ], [ms],
    )
]

Итого:
- *2G* - меньше типового значения
- *3G* - меньше типового значения, можно также заметить что задержка меньше чем у 4 поколения, что не является очевидным
- *4G* - меньше типового значения, но больше чем у 3 поколения, возможная причина - большее кол-во узлов коммутации на пути до шлюза

Рассчитаем задержку сигнала в радиолинии, как расстояние до вышки связи, разделённое на скорость света:

#align(center)[
    #tablex(
    columns: 5,
    align: center + horizon,
    auto-vlines: false,
    header-rows: 1,

    /* --- header --- */
    [], colspanx(2)[*Расстояние*], colspanx(2)[*Задержка в радиолинии *],
    /* -------------- */

    [*2G*], [$155$], [m], [$0.00051766$], [ms],
    [*3G*], [$155$], [m], [$0.00051766$], [ms],
    [*4G*], [$155$], [m], [$0.00051766$] , [ms],
    )
]

Если сравнить это с задержкой (ping), которую рассчитала программа, то увидим, что доля задержки сигнала в радиолинии невелика по сравнению с задержками в технических системах сотового оператора. Основная задержка в маршрутизаторах, обратных шлюзах, которые содержатся в технических средствах сотового оператора.