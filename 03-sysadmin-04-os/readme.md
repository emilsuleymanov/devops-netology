#3.4. Операционные системы
1. Был установлен node_exporter. 

- Создана учетная запись node_exporter.

- Выполнено создание сервиса(systemd.service).

- Сервис добавлен в автозагрузку. Успешно запускает и останавливается.

![Screen1](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-04-os/screen1.png)
![Screen2](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-04-os/screen2.png)
![Screen3](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-04-os/screen3.png)

2.Ознакомьтесь с опциями node_exporter и выводом /metrics.

![Screen4](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-04-os/screen4.png)

3.Установите в свою виртуальную машину Netdata.

![Screen5](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-04-os/screen5.png)

4. Можно по выводу dmesg понять, осознает ли ОС, что загружена не на настоящем оборудовании.
![Screen6](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-04-os/screen6.png)

5. sysctl fs.nr_open -  параметр ограничивает количество одновременно открытых в системе файлов. 

Значение по умолчанию = 1024*1024 (1048576).

При помощи ulimit можно открутить мягкие ограничения до пределов жестких. Следует понимать, что ulimit меняет только текущие лимиты, для шелла и всех программ, запущенных в этом шелле, поэтому после завершения сессии или даже в другом окне терминала значения останутся прежними.

![Screen7](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-04-os/screen7.png)

6.
Запустите любой долгоживущий процесс (не ls, который отработает мгновенно, а, например, sleep 1h) в отдельном неймспейсе процессов.

![Screen8](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-04-os/screen8.png)

7. :(){ :|:& };: - Логическая бомба (известная также как fork bomb), забивающая память системы, что в итоге приводит к её зависанию.
limits.conf — файл в Linux системах в котором можно задавать ограничения для пользователей, чаще всего на практике оказывается полезным ограничивать количество выделенных ресурсов центрального процессора или оперативной памяти. Файл находится на Debian подобных системах по пути /etc/security/limits.conf

![Screen9](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-04-os/screen9.png)
![Screen10](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-04-os/screen10.png)
