# 3.9. Элементы безопасности информационных систем

### 1. Установите Bitwarden плагин для браузера. Зарегистрируйтесь и сохраните несколько паролей.

![Screen1](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-09-security/screen1.png)

### 2. Установите Google authenticator на мобильный телефон. Настройте вход в Bitwarden акаунт через Google authenticator OTP.

![Screen2](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-09-security/screen2.jpg)

### 3. Установите apache2, сгенерируйте самоподписанный сертификат, настройте тестовый сайт для работы по HTTPS.

Сертификат был установлен, но не был принят браузером как доверенный.

![Screen3](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-09-security/screen3.png)


![Screen4](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-09-security/screen4.png)


![Screen5](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-09-security/screen5.png)


![Screen6](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-09-security/screen6.png)


![Screen7](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-09-security/screen7.png)

### 4. Проверьте на TLS уязвимости произвольный сайт в интернете.

![Screen8](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-09-security/screen8.png)

![Screen9](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-09-security/screen9.png)

### 5. Установите на Ubuntu ssh сервер, сгенерируйте новый приватный ключ. Скопируйте свой публичный ключ на другой сервер. Подключитесь к серверу по SSH-ключу.

![Screen10](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-09-security/screen10.png)

### 6. Переименуйте файлы ключей из задания 5. Настройте файл конфигурации SSH клиента, так чтобы вход на удаленный сервер осуществлялся по имени сервера.

Я уже использую ssh на удаленных серверах. Как пример на github.com

![Screen11](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-09-security/screen11.png)

![Screen12](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-09-security/screen12.png)

### 7. Соберите дамп трафика утилитой tcpdump в формате pcap, 100 пакетов. Откройте файл pcap в Wireshark.

![Screen13](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-09-security/screen13.png)
