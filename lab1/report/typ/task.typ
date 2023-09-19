= Цель работы

Изучение моделей линий в сотовых сетях и беспроводных
локальных сетях WiFi, которые позволяют рассчитать затухание сигнала
в линии и ожидаемую мощность сигнала в месте приема.

#pagebreak()
= Постановка задачи
- Подготовка к работе
  + Установить программное обеспечение Network Cell Info Lite.
  + Изучить руководство пользователя.


- Порядок выполнения работы \
  При помощи программы Network Cell Info Lite для каждого режима
  работы сети 2G, 3G, 4G и WiFi выполнить следующие измерения по
  пунктам 1 – 4 Переключение режима работы сети осуществляется в
  настройках телефона, например, Настройки/SIM-карты и мобильные
  сети/SIM-карта (для которой выбирается режим)/Предпочтительный тип
  сети/Только 2G или Предпочтительно 3G или Предпочтительно 4G.
  Изменить режим работы можно также через меню программы Network
  Cell Info Lite: Настройки/Общие/Настройки системной сети.
  + Измерить мощность принимаемого сигнала (RSRP для 4G или RSSI
    для 3G, 2G, WiFi) в 3 местах (в пределах помещения или в
    диапазоне 10 метров на улице). Программа Network Cell Info Lite,
    начиная с версии v.6.1.32, имеет большой интервал усреднения ~ 10
    секунд при измерении мощности сигнала. Записывать результаты
    измерения нужно после завершения интервала усреднения.
  + Записать результаты оценки статистики подключения к сети между
    2G, 3G, 4G для контроля включения соответствующего режима
    работы сети. После переключения режима 2G, 3G, 4G нужно нажать
    кнопку Сброс на вкладке Статистика. Проверить установку
    нужного режима и отсутствие переключения режима работы под
    управлением базовой станции сети: 100% подключения должно
    соответствовать выбранному режиму работы.
  + Измерить расстояние до базовой станции по карте. Определить
    местоположение базовой станции и телефона на вкладке Карта.
    Измерить расстояние можно, например, при помощи Яндекс карты.
  + Измерить скорость передачи данных, задержку (ping) и вариацию
    задержки (jitter) для одного места измерения мощности сигнала 5
    раз с интервалом 2 минуты. При включении WiFi в телефоне
    программа Network Cell Info Lite автоматически переключает
    измерение скорости передачи на эту сеть.


- Обработка результатов
  + Рассчитать ожидаемую мощность сигнала по применимым моделям
    для 2G, 3G, 4G при следующих параметрах:
    - Частота сигнала определяется как середина используемого в
      эксперименте диапазона частот Downlink.
    - Мощность передатчика базовой станции сотовой сети 43 дБм.
    - Коэффициент усиления антенны базовой станции 15 дБ,
      сотового телефона 0 дБ.
    - При отсутствии возможности оценить высоту установки
      антенны базовой станции использовать типовое значение для
      макросоты или микросоты.
  + Рассчитать ожидаемую мощность сигнала для WiFi при следующих
    параметрах:
    - Мощность передатчика точки доступа WiFi 20 дБм.
    - Коэффициент усиления антенны точки доступа и WiFi
      телефона 0 дБ.
  + Сравнить результаты расчета мощности сигнала на входе приемника с     
    измерениями.
  + Определить вероятность нахождения телефона в зоне уверенного
    приема при условии:
    - измеренные значения мощности сигнала являются средними значениями 
      случайной величины с нормальным законом распределения и стандартным 
      отклонением, определенным в моделях для 2G, 3G, 4G;
    - мощность сигнала на входе приемника должна быть больше
      – 100 дБм – типового значения чувствительности приёмника, при
      котором достигается вероятность приема кадра без ошибки не
      менее 90%.
  + Определить среднюю скорость передачи и диапазон изменения
    скорости для всех режимов работы. Сравнить с максимальной
    достижимой скоростью передачи и с типовыми значениями из
    табл. 1.9.
  + Определить среднюю задержку (ping) передачи и диапазон
    изменения задержки для всех режимов работы. Сравнить с
    типовыми значениями из табл. 1.10. Рассчитать задержку сигнала в
    радиолинии и определить долю этой величины в общей задержке
    передачи кадров.