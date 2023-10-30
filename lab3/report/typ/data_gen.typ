== Источник данных

Для реализации модели подсистемы *Data source* 
был выбран блок *Bernoulli Binary Generator* из набора *_Communications
Toolbox/Comm Sources/Random Data Sources_*.

```
Генератор случайных чисел формирует случайную последовательность двоичных символов с одинаковой вероятностью появления 0 и 1
```

#figure(
  image("../pics/data_gen.png", width: 80%),
  caption: [
    Data source
  ]
)

Выставим слледующие параметры:

#figure(
  image("../pics/more/data.png", width: 80%),
)

#pagebreak()