#3.6 Сеть 1

1. telnet по указанному узлу прошел успешно. Статус 301. Cтандартный код ответа HTTP, получаемый в ответ от сервера в ситуации, когда запрошенный ресурс был на постоянной основе перемещён в новое месторасположение, и указывающий на то, что текущие ссылки, использующие данный URL, должны быть обновлены.

![Screen1](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-06-net/screen1.png)

2. Повторите задание 1 в браузере, используя консоль разработчика F12.

![Screen2](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-06-net/screen2.png)

200 OK — успешный запрос. Если клиентом были запрошены какие-либо данные, то они находятся в заголовке и/или теле сообщения. 

3. Какой IP адрес у вас в интернете?

![Screen3](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-06-net/screen3.png)

**178.204.165.64**

4. Какому провайдеру принадлежит ваш IP адрес? Какой автономной системе AS? Воспользуйтесь утилитой whois

![Screen4](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-06-net/screen4.png)

Имя провайдера: Service Provider PJSC Tattelecom

Автономная система: AS28840 

5. Через какие сети проходит пакет, отправленный с вашего компьютера на адрес 8.8.8.8? Через какие AS? Воспользуйтесь утилитой traceroute

![Screen5](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-06-net/screen5.png)

6. Повторите задание 5 в утилите mtr. На каком участке наибольшая задержка - delay?

![Screen6](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-06-net/screen6.png)

**172.253.66.116 + 75% потерь** 

7.Какие DNS сервера отвечают за доменное имя dns.google? Какие A записи? Воспользуйтесь утилитой dig

![Screen7](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-06-net/screen7.png)

![Screen8](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-06-net/screen8.png)

**8.8.8.8 & 8.8.4.4**

8. Проверьте PTR записи для IP адресов из задания 7. Какое доменное имя привязано к IP? воспользуйтесь утилитой dig

![Screen9](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-06-net/screen9.png)
