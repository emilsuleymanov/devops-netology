


# 6.5. Elasticsearch

## Задача 1

Используя докер образ [centos:7]как базовый и 
[документацию по установке и запуску Elastcisearch]

- составьте Dockerfile-манифест для elasticsearch
- соберите docker-образ и сделайте `push` в ваш docker.io репозиторий
- запустите контейнер из получившегося образа и выполните запрос пути `/` c хост-машины

Требования к `elasticsearch.yml`:
- данные `path` должны сохраняться в `/var/lib`
- имя ноды должно быть `netology_test`

В ответе приведите:
- текст Dockerfile манифеста
- ссылку на образ в репозитории dockerhub
- ответ `elasticsearch` на запрос пути `/` в json виде

Подсказки:
- возможно вам понадобится установка пакета perl-Digest-SHA для корректной работы пакета shasum
- при сетевых проблемах внимательно изучите кластерные и сетевые настройки в elasticsearch.yml
- при некоторых проблемах вам поможет docker директива ulimit
- elasticsearch в логах обычно описывает проблему и пути ее решения

Далее мы будем работать с данным экземпляром elasticsearch.

**Ответ**

![Screen1](https://github.com/emilsuleymanov/devops-netology/blob/main/06-db-05-elasticsearch/screen1.png)

![Screen2](https://github.com/emilsuleymanov/devops-netology/blob/main/06-db-05-elasticsearch/screen2.png)

![Screen3](https://github.com/emilsuleymanov/devops-netology/blob/main/06-db-05-elasticsearch/screen3.png)


https://hub.docker.com/r/emilsuleymanov/netology_elasticsearch



## Задача 2

В этом задании вы научитесь:
- создавать и удалять индексы
- изучать состояние кластера
- обосновывать причину деградации доступности данных

Ознакомтесь с [документацией](https://www.elastic.co/guide/en/elasticsearch/reference/current/indices-create-index.html) 
и добавьте в `elasticsearch` 3 индекса, в соответствии со таблицей:

| Имя | Количество реплик | Количество шард |
|-----|-------------------|-----------------|
| ind-1| 0 | 1 |
| ind-2 | 1 | 2 |
| ind-3 | 2 | 4 |

Получите список индексов и их статусов, используя API и **приведите в ответе** на задание.

Получите состояние кластера `elasticsearch`, используя API.

Как вы думаете, почему часть индексов и кластер находится в состоянии yellow?

Удалите все индексы.

**Важно**

При проектировании кластера elasticsearch нужно корректно рассчитывать количество реплик и шард,
иначе возможна потеря данных индексов, вплоть до полной, при деградации системы.

**Ответ**

![Screen4](https://github.com/emilsuleymanov/devops-netology/blob/main/06-db-05-elasticsearch/screen4.png)

![Screen5](https://github.com/emilsuleymanov/devops-netology/blob/main/06-db-05-elasticsearch/screen5.png)

![Screen6](https://github.com/emilsuleymanov/devops-netology/blob/main/06-db-05-elasticsearch/screen6.png)

![Screen7](https://github.com/emilsuleymanov/devops-netology/blob/main/06-db-05-elasticsearch/screen7.png)

![Screen8](https://github.com/emilsuleymanov/devops-netology/blob/main/06-db-05-elasticsearch/screen8.png)

## Задача 3

В данном задании вы научитесь:
- создавать бэкапы данных
- восстанавливать индексы из бэкапов

Создайте директорию `{путь до корневой директории с elasticsearch в образе}/snapshots`.

Используя API [зарегистрируйте](https://www.elastic.co/guide/en/elasticsearch/reference/current/snapshots-register-repository.html#snapshots-register-repository) 
данную директорию как `snapshot repository` c именем `netology_backup`.

**Приведите в ответе** запрос API и результат вызова API для создания репозитория.

Создайте индекс `test` с 0 реплик и 1 шардом и **приведите в ответе** список индексов.

[Создайте `snapshot`](https://www.elastic.co/guide/en/elasticsearch/reference/current/snapshots-take-snapshot.html) 
состояния кластера `elasticsearch`.

**Приведите в ответе** список файлов в директории со `snapshot`ами.

Удалите индекс `test` и создайте индекс `test-2`. **Приведите в ответе** список индексов.

[Восстановите](https://www.elastic.co/guide/en/elasticsearch/reference/current/snapshots-restore-snapshot.html) состояние
кластера `elasticsearch` из `snapshot`, созданного ранее. 

**Приведите в ответе** запрос к API восстановления и итоговый список индексов.

Подсказки:
- возможно вам понадобится доработать `elasticsearch.yml` в части директивы `path.repo` и перезапустить `elasticsearch`

**Ответ**

![Screen9](https://github.com/emilsuleymanov/devops-netology/blob/main/06-db-05-elasticsearch/screen9.png)

![Screen10](https://github.com/emilsuleymanov/devops-netology/blob/main/06-db-05-elasticsearch/screen10.png)







