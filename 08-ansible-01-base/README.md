# Домашнее задание к занятию "08.01 Введение в Ansible"

## Подготовка к выполнению
1. Установите ansible версии 2.10 или выше.
2. Создайте свой собственный публичный репозиторий на github с произвольным именем.
3. Скачайте [playbook](./playbook/) из репозитория с домашним заданием и перенесите его в свой репозиторий.

## Основная часть
1. Попробуйте запустить playbook на окружении из `test.yml`, зафиксируйте какое значение имеет факт `some_fact` для указанного хоста при выполнении playbook'a.

![screen1](https://github.com/emilsuleymanov/devops-netology/blob/main/08-ansible-01-base/screen1.png)


2. Найдите файл с переменными (group_vars) в котором задаётся найденное в первом пункте значение и поменяйте его на 'all default fact'.

![screen2](https://github.com/emilsuleymanov/devops-netology/blob/main/08-ansible-01-base/screen2.png)

3. Воспользуйтесь подготовленным (используется `docker`) или создайте собственное окружение для проведения дальнейших испытаний.

![screen3](https://github.com/emilsuleymanov/devops-netology/blob/main/08-ansible-01-base/screen3.png)

4. Проведите запуск playbook на окружении из `prod.yml`. Зафиксируйте полученные значения `some_fact` для каждого из `managed host`.

![screen4](https://github.com/emilsuleymanov/devops-netology/blob/main/08-ansible-01-base/screen4.png)

5. Добавьте факты в `group_vars` каждой из групп хостов так, чтобы для `some_fact` получились следующие значения: для `deb` - 'deb default fact', для `el` - 'el default fact'.

![screen5](https://github.com/emilsuleymanov/devops-netology/blob/main/08-ansible-01-base/screen5.png)

6.  Повторите запуск playbook на окружении `prod.yml`. Убедитесь, что выдаются корректные значения для всех хостов.

![screen6](https://github.com/emilsuleymanov/devops-netology/blob/main/08-ansible-01-base/screen6.png)
![screen7](https://github.com/emilsuleymanov/devops-netology/blob/main/08-ansible-01-base/screen7.png)

7. При помощи `ansible-vault` зашифруйте факты в `group_vars/deb` и `group_vars/el` с паролем `netology`.

![screen8](https://github.com/emilsuleymanov/devops-netology/blob/main/08-ansible-01-base/screen8.png)

8. Запустите playbook на окружении `prod.yml`. При запуске `ansible` должен запросить у вас пароль. Убедитесь в работоспособности.

![screen9](https://github.com/emilsuleymanov/devops-netology/blob/main/08-ansible-01-base/screen9.png)

9. Посмотрите при помощи `ansible-doc` список плагинов для подключения. Выберите подходящий для работы на `control node`.

![screen10](https://github.com/emilsuleymanov/devops-netology/blob/main/08-ansible-01-base/screen10.png)
![screen11](https://github.com/emilsuleymanov/devops-netology/blob/main/08-ansible-01-base/screen11.png)

10. В `prod.yml` добавьте новую группу хостов с именем  `local`, в ней разместите localhost с необходимым типом подключения.

![screen12](https://github.com/emilsuleymanov/devops-netology/blob/main/08-ansible-01-base/screen12.png)

11. Запустите playbook на окружении `prod.yml`. При запуске `ansible` должен запросить у вас пароль. Убедитесь что факты `some_fact` для каждого из хостов определены из верных `group_vars`.

![screen13](https://github.com/emilsuleymanov/devops-netology/blob/main/08-ansible-01-base/screen13.png)

12. Заполните `README.md` ответами на вопросы. Сделайте `git push` в ветку `master`. В ответе отправьте ссылку на ваш открытый репозиторий с изменённым `playbook` и заполненным `README.md`.











---

### Как оформить ДЗ?

Выполненное домашнее задание пришлите ссылкой на .md-файл в вашем репозитории.

---
