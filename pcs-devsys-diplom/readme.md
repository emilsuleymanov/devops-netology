# 4.3. Языки разметки JSON и YAML

### 1. Создайте виртуальную машину Linux.

![Screen1](https://github.com/emilsuleymanov/devops-netology/blob/main/pcd-devsys-diplom/screen1.png)

### 2. Установите ufw и разрешите к этой машине сессии на порты 22 и 443, при этом трафик на интерфейсе localhost (lo) должен ходить свободно на все порты.

![Screen2](https://github.com/emilsuleymanov/devops-netology/blob/main/pcd-devsys-diplom/screen2.png)

### 3. Установите hashicorp vault 

![Screen3](https://github.com/emilsuleymanov/devops-netology/blob/main/pcd-devsys-diplom/screen3.png)

### 4. Cоздайте центр сертификации по инструкции и выпустите сертификат для использования его в настройке веб-сервера nginx (срок жизни сертификата — месяц).

![Screen4](https://github.com/emilsuleymanov/devops-netology/blob/main/pcd-devsys-diplom/screen4.png)

![Screen5](https://github.com/emilsuleymanov/devops-netology/blob/main/pcd-devsys-diplom/screen5.png)

![Screen6](https://github.com/emilsuleymanov/devops-netology/blob/main/pcd-devsys-diplom/screen6.png)

![Screen7](https://github.com/emilsuleymanov/devops-netology/blob/main/pcd-devsys-diplom/screen7.png)

![Screen8](https://github.com/emilsuleymanov/devops-netology/blob/main/pcd-devsys-diplom/screen8.png)


### 5. Установите корневой сертификат созданного центра сертификации в доверенные в хостовой системе.

![Screen9](https://github.com/emilsuleymanov/devops-netology/blob/main/pcd-devsys-diplom/screen9.png)

![Screen10](https://github.com/emilsuleymanov/devops-netology/blob/main/pcd-devsys-diplom/screen10.png)

### 6. Установите nginx.

![Screen11](https://github.com/emilsuleymanov/devops-netology/blob/main/pcd-devsys-diplom/screen11.png)

![Screen12](https://github.com/emilsuleymanov/devops-netology/blob/main/pcd-devsys-diplom/screen12.png)

### 7. По инструкции настройте nginx на https, используя ранее подготовленный сертификат:

![Screen13](https://github.com/emilsuleymanov/devops-netology/blob/main/pcd-devsys-diplom/screen13.png)

  
### 8. Откройте в браузере на хосте https адрес страницы, которую обслуживает сервер nginx.
![Screen14](https://github.com/emilsuleymanov/devops-netology/blob/main/pcd-devsys-diplom/screen14.png)

![Screen15](https://github.com/emilsuleymanov/devops-netology/blob/main/pcd-devsys-diplom/screen15.png)

![Screen16](https://github.com/emilsuleymanov/devops-netology/blob/main/pcd-devsys-diplom/screen16.png)

### 9. Создайте скрипт, который будет генерировать новый сертификат в vault:

![Screen17](https://github.com/emilsuleymanov/devops-netology/blob/main/pcd-devsys-diplom/screen17.png)

![Screen18](https://github.com/emilsuleymanov/devops-netology/blob/main/pcd-devsys-diplom/screen18.png)


### 10. Поместите скрипт в crontab, чтобы сертификат обновлялся какого-то числа каждого месяца в удобное для вас время.
![Screen19](https://github.com/emilsuleymanov/devops-netology/blob/main/pcd-devsys-diplom/screen19.png)
![Screen20](https://github.com/emilsuleymanov/devops-netology/blob/main/pcd-devsys-diplom/screen20.png)
![Screen21](https://github.com/emilsuleymanov/devops-netology/blob/main/pcd-devsys-diplom/screen21.png)

