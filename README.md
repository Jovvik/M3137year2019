# Конспекты М3237

![views per week](https://raw.githubusercontent.com/Jovvik/M3137year2019/traffic/traffic-M3137year2019/views_per_week.svg)

<!-- Если вы хотите помочь, всё, чего не хватает в конспектах - [тут](https://github.com/Jovvik/M3137year2019/issues/2) -->

Если нашли ошибку, пишите в [issues](https://github.com/Jovvik/M3137year2019/issues) или мне в телеграм @aeriu.

## 4 семестр

### Матанализ

- [1 лекция](https://github.com/Jovvik/M3137year2019/blob/pdfs/analysis/4sem/1.pdf)
- [2 лекция](https://github.com/Jovvik/M3137year2019/blob/pdfs/analysis/4sem/2.pdf)
- [1 практика](https://github.com/Jovvik/M3137year2019/blob/pdfs/analysis/4sem/practice/1.pdf) - неполный конспект

### Теория вероятности

- [1 практика](https://github.com/Jovvik/M3137year2019/blob/pdfs/probability%20theory/4sem/practice/1.pdf)

### Методы оптимизации

- [Конспект лекций](https://github.com/Jovvik/M3137year2019/blob/pdfs/optimization%20methods/4sem/main.pdf)

### Математическая логика

- [Конспект лекций](https://github.com/Jovvik/M3137year2019/blob/pdfs/matlog/4sem/main.pdf)
- [1 практика](https://github.com/Jovvik/M3137year2019/blob/pdfs/matlog/4sem/practice/1.pdf)
## 3 семестр

### Матанализ

- [Конспект к экзамену](https://github.com/Jovvik/M3137year2019/blob/pdfs/analysis/3sem/final.pdf)

#### Практики 8-12
- [Конспект](https://github.com/Jovvik/M3137year2019/blob/pdfs/analysis/3sem/practice.pdf)
- [Решения ДЗ](https://github.com/Jovvik/M3137year2019/blob/pdfs/analysis/3sem/hw.pdf)
- [Краткий конспект](https://github.com/Jovvik/M3137year2019/blob/pdfs/analysis/3sem/practice_short.pdf)

### Диффуры
- [1 лекция](https://github.com/Jovvik/M3137year2019/blob/pdfs/diffeq/3sem/1.pdf)
- [2 лекция](https://github.com/Jovvik/M3137year2019/blob/pdfs/diffeq/3sem/2.pdf)
- [3 лекция](https://github.com/Jovvik/M3137year2019/blob/pdfs/diffeq/3sem/3.pdf)
- [Конспект к экзамену](https://github.com/Jovvik/M3137year2019/blob/pdfs/diffeq/3sem/final.pdf)

## 2 семестр

### Матанализ
- [Конспект к экзамену](https://github.com/Jovvik/M3137year2019/blob/pdfs/analysis/2sem/final.pdf)

### Линейная алгебра
- [Конспект к экзамену](https://github.com/Jovvik/M3137year2019/blob/pdfs/linear%20algebra/2sem/final.pdf)

## 1 семестр

### Линейная алгебра
- [Конспект к экзамену](https://github.com/Jovvik/M3137year2019/blob/pdfs/linear%20algebra/1sem/main.pdf) _(рендер pdf с векторами в github'e не работает, поэтому надо pdf скачивать)_

### Матанализ
- [Опрос #1](https://github.com/Jovvik/M3137year2019/blob/pdfs/analysis/1sem/opros.pdf)
- [Опрос #2](https://github.com/Jovvik/M3137year2019/blob/pdfs/analysis/1sem/opros2.pdf)
- [Конспект к экзамену](https://github.com/Jovvik/M3137year2019/blob/pdfs/analysis/1sem/final.pdf)

## Как компилировать самому

Билд делается через `xelatex`, потому что я ~тупой и не понял сразу, как включить русский в нормальном латехе~ хотел адекватную поддержку русского. Но в `pdflatex` билдится, багов не замечал. Зависимостей тонны, так что проще сразу ставить самый полный набор пакетов, который можете, иначе будет боль с `tlmgr`.

Все, кроме конспектов лекций и первого опроса по матану, писалось с минимизацией копипаста через импорты кусков других файлов с помощью `catchfilebetweentags`, поэтому по отдельности ничего не компилируется.

В 1 семе первые пара лекций написаны в markdown, при этом из-за добавления тегов для импортов они теперь сломанные, но пдфки в оригинальном виде оставлены.
