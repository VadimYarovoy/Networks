#import "../preamble.typ": *
== Функциональная схема передатчика ОФМ сигналов

При _*ФМ*_ передаче $a_k = 1$ соответствует фаза несущего
колебания элемента, равная $0$, а передаче $a_k = 0$ -
противоположная фаза:

#math.equation(
  block: true,
  [$
    S_1(t) = A sin(2 pi f t), space
    S_0(t) = A sin(2 pi f t + pi)= - A sin(2 pi f t)
  $]
)

При относительной фазовой модуляции (_*ОФМ*_) информация о
передаваемом символе закладывается в изменение фазы сигналов двух
соседних элементов сигнала. Например, фаза сигнала должна изменяться
скачком на 180 градусов всякий раз при передаче "0" и оставаться
непрерывной (равной фазе предыдущего элемента сигнала) при передаче
"1". 

\
Передатчик _*ОФМ*_ сигналов состоит из 2 блоков: 
+ дифференциального кодера, который преобразует последовательность двоичных символов аk в символы $b_k = ±1$
+ модулятора, в котором символы $b_k$ управляют
    изменением фазы несущего колебания – при $b_k=1$ фаза несущего
    колебания не изменяется, при $b_k = -1$ изменяется на $180 degree$



#figure(
  image("../pics/tx.png", width: 80%),
  caption: [
    Передатчик
  ],
)
#pagebreak()