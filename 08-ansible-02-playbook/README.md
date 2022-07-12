# Домашнее задание к занятию "08.02 Работа с Playbook"

## Подготовка к выполнению

1. (Необязательно) Изучите, что такое [clickhouse](https://www.youtube.com/watch?v=fjTNS2zkeBs) и [vector](https://www.youtube.com/watch?v=CgEhyffisLY)
2. Создайте свой собственный (или используйте старый) публичный репозиторий на github с произвольным именем.
3. Скачайте [playbook](./playbook/) из репозитория с домашним заданием и перенесите его в свой репозиторий.
4. Подготовьте хосты в соответствии с группами из предподготовленного playbook.

## Основная часть

1. Приготовьте свой собственный inventory файл `prod.yml`.

![screen1](https://github.com/emilsuleymanov/devops-netology/blob/main/08-ansible-02-playbook/screen1.png)

2. Допишите playbook: нужно сделать ещё один play, который устанавливает и настраивает [vector](https://vector.dev).

Выполнено

3. При создании tasks рекомендую использовать модули: `get_url`, `template`, `unarchive`, `file`.
4. Tasks должны: скачать нужной версии дистрибутив, выполнить распаковку в выбранную директорию, установить vector.

![screen2](https://github.com/emilsuleymanov/devops-netology/blob/main/08-ansible-02-playbook/screen2.png)

5. Запустите `ansible-lint site.yml` и исправьте ошибки, если они есть.

![screen3](https://github.com/emilsuleymanov/devops-netology/blob/main/08-ansible-02-playbook/screen3.png)

6. Попробуйте запустить playbook на этом окружении с флагом `--check`.

![screen4](https://github.com/emilsuleymanov/devops-netology/blob/main/08-ansible-02-playbook/screen4.png)

7. Запустите playbook на `prod.yml` окружении с флагом `--diff`. Убедитесь, что изменения на системе произведены.

Выполнено

8. Повторно запустите playbook с флагом `--diff` и убедитесь, что playbook идемпотентен.

![screen5](https://github.com/emilsuleymanov/devops-netology/blob/main/08-ansible-02-playbook/screen5.png)

9. Подготовьте README.md файл по своему playbook. В нём должно быть описано: что делает playbook, какие у него есть параметры и теги.

![screen6](https://github.com/emilsuleymanov/devops-netology/blob/main/08-ansible-02-playbook/screen6.png)

10. Готовый playbook выложите в свой репозиторий, поставьте тег `08-ansible-02-playbook` на фиксирующий коммит, в ответ предоставьте ссылку на него.

(https://github.com/emilsuleymanov/devops-netology/blob/main/08-ansible-02-playbook/playbook)

---

### Как оформить ДЗ?

Выполненное домашнее задание пришлите ссылкой на .md-файл в вашем репозитории.

---
