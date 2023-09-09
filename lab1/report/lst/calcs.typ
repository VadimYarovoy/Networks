#import "../preamble.typ": *

= Обработка результатов
== Расчет ожидаемой мощности сигнала

$ P_r = P_t - P L(d) ", dBm" $

Модели для вычисления затухания:
- *2G* \
  Формула для расчета затухания сигнала в условиях
  города записывается следующим образом 

  $ 
    P L(d) = 46.3  + 33.9 lg(f_c) - 13.82 lg(h_(t e)) - a(h_(r e)) + \
    + (44.9 - 6.55 lg(h_(t e))) lg(d) + C_m ", Db"
  $

  $a(h_(r e))$ – корректирующий фактор для эффективной высоты
  мобильной антенны, который является функцией величины зоны
  обслуживания.
  
  \
  Для крупных городов:

  $
    &a(h_(r e)) = 3.2 (lg(11.75 h_(r e)))^2 - 4.97 ", Db" \
    &C_m = 3 ", Db" 
  $

- *3G* \
  Модель потерь на трассе внутри помещения (в логарифмическом
  масштабе, дБ) представлена в следующей упрощенной форме, которая
  получена из модели COST внутри помещения:
  $ P L(d) = 37 + 30 lg(d) + 18.3 n((n + 2) / (n + 1) - 0.46) ", Db" $

  Где:
  + d – расстояние между передатчиком и приемником (м),
  + n – количество этажей на пути.

- *4G* \
  Для случая отсутствия прямой видимости расчет затухания сигнала
  в 3D-UMа учитывает характеристики городской среды:
  $
    &P L_(3D-U M a-N L O S) = 161.04 - 7.1 lg(W) + 7.5 lg(h) - (24.37 - 3.7(h / h_(B S))^2) \
    &lg(h_(B s)) + (43.42 - 3.1 lg(h_(B S))) (lg(d_(3 D)) - 3) + 20 lg(f_c) - \
    &- (3.2 (lg(17.625))^2 - 4.97) - 0.6 (h_(U T) - 1.5) ", Db"
  $
  
  где расстояние $d_(3 D)$ измеряется в метрах, частота сигнала $f_c$ – в ГГц,
  $h$ – средняя высота зданий в диапазоне $5 м < h < 50 м$, типовое
  значение $h = 20 м$,
  $W$ – ширина улицы в диапазоне $5 м < W < 50 м$, типовое значение W 20 м,
  типовое значение $h_(B S) = 25 м$ и $10 м < h_(B S) < 150 м$,
  $1.5 м ≤ h_(U T) ≤ 22.5 м$,

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

    [*2G*]  , [$-63$], [dBm], [$-$], [dBm], [$-59$], [dBm], [$-$], [dBm], [$-65$], [dBm], [$-$], [dBm],
    [*3G*]  , [$-81$], [dBm], [$-$], [dBm], [$-83$], [dBm], [$-$], [dBm], [$-78$], [dBm], [$-$], [dBm],
    [*4G*]  , [$-81$], [dBm], [$-$], [dBm], [$-94$], [dBm], [$-$], [dBm], [$-89$], [dBm], [$-$], [dBm],
    [*WiFi*], [$-53$], [dBm], [$-$], [dBm], [$-85$], [dBm], [$-$], [dBm], [$-61$], [dBm], [$-$], [dBm],
    )
]

Сравним результаты расчета мощности сигнала на входе приемника с измерениями.


== Определение вероятности нахождения телефона в зоне уверенного приема

Стандартное отклонение 12дБ, так как замеры были сделаны внутри помещения.


- *2G* \
  

- *3G* \
  

- *4G* \
  
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
    [*4G*], [$25.9-99.2$], [Mbs], [$67.22$], [Mbs], [$300$], [Mbs], [$30$ ], [Mbs],
    )
]

Итого:
- *2G* - соответствует типовому значению
- *3G* - соответствует типовому значению
- *4G* - превосходит типовое значение, возможной причиной может быть небольшое расстояние\
  между устройством и базовой станцией ($40.7 m$)


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
- *3G* - меньше типового значения
- *4G* - меньше типового значения

Рассчитаем задержку сигнала в радиолинии, как расстояние до вышки связи, разделённое на скорость света:

ФОРМУЛА!!!!!

#align(center)[
    #tablex(
    columns: 5,
    align: center + horizon,
    auto-vlines: false,
    header-rows: 1,

    /* --- header --- */
    [], colspanx(2)[*Расстояние*], colspanx(2)[*Задержка в радиолинии *],
    /* -------------- */

    [*2G*], [$40.7$], [m], [$0.00013$], [ms],
    [*3G*], [$40.7$], [m], [$0.00013$], [ms],
    [*4G*], [$40.7$], [m], [$0.00013$] , [ms],
    )
]

Если сравнить это с задержкой (ping), которую рассчитала программа, то увидим, что доля задержки сигнала в радиолинии невелика по сравнению с задержками в технических системах сотового оператора. Основная задержка в маршрутизаторах, обратных шлюзах, которые содержатся в технических средствах сотового оператора.