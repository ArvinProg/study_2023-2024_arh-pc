﻿**РОССИЙСКИЙ УНИВЕРСИТЕТ ДРУЖБЫ НАРОДОВ**

**Факультет физико-математических и естественных наук**

**Кафедра прикладной информатики и теории вероятностей**





**ОТЧЕТ**

**ПО ЛАБОРАТОРНОЙ РАБОТЕ № 	7**

*дисциплина:	Архитектура компьютера*	









Студент:  Мелкумян Арвин

`	`Группа:           НКАбд-04-23







**МОСКВА**

2023 г.
# **КОМАНДЫ БЕЗУСЛОВНОГО И УСЛОВНОГО ПЕРЕХОДОВ В NASM. ПРОГРАММИРОВАНИЕ ВЕТВЛЕНИЙ.**

**Цель работы:** Изучение команд условного и безусловного переходов. Приобретение навыков написания программ с использованием переходов. Знакомство с назначением и структурой файла листинга.

**Ход работы.**

Создадим программу для реализации безусловного перехода, исходный код которой показан на рисунке 1.

![](image/001.png)Рисунок 1 — Исходный код программы

Как видно из кода, после старта выполнение с помощью команды jmp переходит к метке label2 и оттуда продолжается до завершения. Результат работы программы показан на рисунке 2.


![](image/002.png)Рисунок 2 — Результат работы программы

Изменим программу таким образом, чтобы сначала выводила второе сообщение, потом первое, потом завершала работу. Исходный код такой программы показан на рисунке 3, а результат выполнения на рисунке 4.

![](image/003.png)Рисунок 3 — Исходный код второй версии программы

![](image/004.png)Рисунок 4 — Результат выполенения программы

Наконец, изменим программу, чтобы она выводила сообщения в обратном порядке. Скорректированный исходный код показан на рисунке 5. Результат выполнения на рисунке 6.

![](image/005.png)Рисунок 5 — Исходный файл третьей версии программы

![](image/006.png)Рисунок 6 — Результат выполнения программы

Далее создадим программу, которая из трех чисел (двух явно заданных в программе и одного вводимого пользователем) найдем наибольшее. Исходный код программы показан на рисунке 7, результат выполенения на рисунке 8

![](image/007.png)Рисунок 7 — Исходный код программы lab7-2

![](image/008.png)Рисунок 8 — Результат выполнения программы lab7-2

Указав при компиляции ключ l и имя файла получим файл листинга программы, пример которого для программы lab7-2 представлен на рисунке 9.

![](image/009.png)Рисунок 9 — Файл листинга программы

Данный файл содержит машинный код, адрес памяти и исходный код программы. К примеру, в строках 3-5 содержится объявление данных для выводимых сообщений. В случае ошибки в исходном коде в файле листинга отображается ошибка в соответствующем месте файла.

**Задание 1.** Напишите программу нахождения наименьшей из 3 целочисленных переменных 𝑎,𝑏 и с. Значения переменных соответствии с вариантом 17 равны 26; 12 и 68. Создайте исполняемый файл и проверьте его работу.

Решение.

Исходный код программы показан на рисунке 10

![](image/010.png)Рисунок 10 — Исходный код программы lab7-3

В отличие от представленной выше программы 7-2, здесь мы сразу работаем с числами и не вводим данные из консоли, что несколько упрощает исходный код.

Результат выполнения программы показан на рисунке 11.

![](image/011.png)Рисунок 11 — Результат выполнения программы lab7-3

**Задание 2.** Напишите программу, которая для введенных с клавиатуры значений 𝑥 и 𝑎 вычисляет значение заданной функции 𝑓(𝑥) и выводит результат вычислений. Вид функции 𝑓(𝑥) выбрать из таблицы 7.6 вариантов заданий в соответствии с вариантом, полученным при выполнении лабораторной работы № 7 (вариант 17). Создайте исполняемый файл и проверьте его работу для значений 𝑥 и 𝑎 из 7.6.

**Решение.**

Исходный код программы показан на рисунке 12.

![](image/012.png)Рисунок 12 — Исходный код программы 7-4

На рисунке 13 показан результат выполнения программы с предложенными, согласно варианту, исходными данными.


![](image/013.png)Рисунок 13 — Результат выполнения программы

Как нетрудно заметить, результат соответствует правильному ответу.

**Выводы:** В ходе лабораторной работы были изучены структуры безусловного и условного перехода в NASM.
10
