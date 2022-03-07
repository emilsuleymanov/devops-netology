# Домашнее задание к занятию "6.4. PostgreSQL"

## Задача 1

Используя docker поднимите инстанс PostgreSQL (версию 13). Данные БД сохраните в volume.

Подключитесь к БД PostgreSQL используя `psql`.

Воспользуйтесь командой `\?` для вывода подсказки по имеющимся в `psql` управляющим командам.

**Найдите и приведите** управляющие команды для:
- вывода списка БД
- подключения к БД
- вывода списка таблиц
- вывода описания содержимого таблиц
- выхода из psql

- вывода списка БД -> \l
- подключения к БД -> \c
- вывода списка таблиц -> \d 
- вывода описания содержимого таблиц -> \dS+
- выхода из psql -> \q


![Screen1](https://github.com/emilsuleymanov/devops-netology/blob/main/06-db-04-postgresql/screen1.png)

![Screen2](https://github.com/emilsuleymanov/devops-netology/blob/main/06-db-04-postgresql/screen2.png)


## Задача 2

Используя `psql` создайте БД `test_database`.

Изучите бэкап БД.

Восстановите бэкап БД в `test_database`.

Перейдите в управляющую консоль `psql` внутри контейнера.

Подключитесь к восстановленной БД и проведите операцию ANALYZE для сбора статистики по таблице.

Используя таблицу [pg_stats], найдите столбец таблицы `orders` 
с наибольшим средним значением размера элементов в байтах.

**Приведите в ответе** команду, которую вы использовали для вычисления и полученный результат.

![Screen3](https://github.com/emilsuleymanov/devops-netology/blob/main/06-db-04-postgresql/screen3.png)

![Screen4](https://github.com/emilsuleymanov/devops-netology/blob/main/06-db-04-postgresql/screen4.png)


## Задача 3

Архитектор и администратор БД выяснили, что ваша таблица orders разрослась до невиданных размеров и
поиск по ней занимает долгое время. Вам, как успешному выпускнику курсов DevOps в нетологии предложили
провести разбиение таблицы на 2 (шардировать на orders_1 - price>499 и orders_2 - price<=499).

Предложите SQL-транзакцию для проведения данной операции.

![Screen5](https://github.com/emilsuleymanov/devops-netology/blob/main/06-db-04-postgresql/screen5.png)

Можно ли было изначально исключить "ручное" разбиение при проектировании таблицы orders?

Да, если прописать правила вставки.

```
CREATE RULE orders_insert_to_more AS ON INSERT TO orders WHERE ( price > 499 ) DO INSTEAD INSERT INTO orders_more_499_price VALUES (NEW.*);
CREATE RULE orders_insert_to_less AS ON INSERT TO orders WHERE ( price <= 499 ) DO INSTEAD INSERT INTO orders_less_499_price VALUES (NEW.*);
```
## Задача 4

Используя утилиту `pg_dump` создайте бекап БД `test_database`.

![Screen6](https://github.com/emilsuleymanov/devops-netology/blob/main/06-db-04-postgresql/screen6.png)

Как бы вы доработали бэкап-файл, чтобы добавить уникальность значения столбца `title` для таблиц `test_database`?

Добавить свойство UNIQUE ```title character varying(80) NOT NULL UNIQUE``` или добавить индексы ```CREATE INDEX ON orders```




