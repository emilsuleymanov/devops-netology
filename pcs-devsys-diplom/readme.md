#  Курсовая работа по итогам модуля "DevOps и системное администрирование"

### 1. Создайте виртуальную машину Linux.

![Screen1](https://github.com/emilsuleymanov/devops-netology/blob/main/pcs-devsys-diplom/screen1.png)

### 2. Установите ufw и разрешите к этой машине сессии на порты 22 и 443, при этом трафик на интерфейсе localhost (lo) должен ходить свободно на все порты.

[Screen2](https://github.com/emilsuleymanov/devops-netology/blob/main/pcs-devsys-diplom/screen2.png)

### 3. Установите hashicorp vault 

![Screen3](https://github.com/emilsuleymanov/devops-netology/blob/main/pcs-devsys-diplom/screen3.png)

### 4. Cоздайте центр сертификации по инструкции (ссылка) и выпустите сертификат для использования его в настройке веб-сервера nginx (срок жизни сертификата - месяц).

![Screen4](https://github.com/emilsuleymanov/devops-netology/blob/main/pcs-devsys-diplom/screen4.png)

![Screen5](https://github.com/emilsuleymanov/devops-netology/blob/main/pcs-devsys-diplom/screen5.png)

![Screen6](https://github.com/emilsuleymanov/devops-netology/blob/main/pcs-devsys-diplom/screen6.png)

![Screen7](https://github.com/emilsuleymanov/devops-netology/blob/main/pcs-devsys-diplom/screen7.png)

![Screen8](https://github.com/emilsuleymanov/devops-netology/blob/main/pcs-devsys-diplom/screen8.png)


### 5. Установите корневой сертификат созданного центра сертификации в доверенные в хостовой системе.

![Screen9](https://github.com/emilsuleymanov/devops-netology/blob/main/pcs-devsys-diplom/screen9.png)

![Screen10](https://github.com/emilsuleymanov/devops-netology/blob/main/pcs-devsys-diplom/screen10.png)

### 6. Установите nginx.

![Screen11](https://github.com/emilsuleymanov/devops-netology/blob/main/pcs-devsys-diplom/screen11.png)

![Screen12](https://github.com/emilsuleymanov/devops-netology/blob/main/pcs-devsys-diplom/screen12.png)

### 7. По инструкции (ссылка) настройте nginx на https, используя ранее подготовленный сертификат:

![Screen13](https://github.com/emilsuleymanov/devops-netology/blob/main/pcs-devsys-diplom/screen13.png)

  
### 8. Откройте в браузере на хосте https адрес страницы, которую обслуживает сервер nginx.
![Screen14](https://github.com/emilsuleymanov/devops-netology/blob/main/pcs-devsys-diplom/screen14.png)

![Screen15](https://github.com/emilsuleymanov/devops-netology/blob/main/pcs-devsys-diplom/screen15.png)

![Screen16](https://github.com/emilsuleymanov/devops-netology/blob/main/pcs-devsys-diplom/screen16.png)

### 9. Создайте скрипт, который будет генерировать новый сертификат

```
root@user-VirtualBox:/home/user# nano script_update.sh
#!/bin/bash
export VAULT_ADDR=http://127.0.0.1:8200
#Задаем переменные для вывода времени
D=$(date +%Y-%m-%d)
T=$(date +%H:%M:%S)
vault status #Запускаем проверку состояния vault
if [ $? -eq 0 ] #Если vault находится в состоянии unsealed
then #запускаем выпуск нового секртификата
 vault write -format=json pki_int/issue/project-dot-devel \
  common_name="project.devel" ttl="720h" > \
  ~/project_devel.crt
 cat ~/project_devel.crt | jq -r .data.certificate > \
  ~/project_devel.pem
 cat ~/project_devel.crt | jq -r .data.ca_chain[] >> \
  ~/project_devel.pem
 cat ~/project_devel.crt | jq -r .data.private_key > \
  ~project_devel.key
 systemctl reload nginx
 echo "The Certificate for NGINX was successfully updated at" "$D" "$T" >> \
  /var/log/ssl/cert_update.log
else #Если vault запечатан либо не запущен - выводим сообщение об ошибке
 D=$(date +%Y-%m-%d)
 T=$(date +%H:%M:%S)
 echo "ERROR" "$D" "$T" "The Vault Server is in the sealed state" >> \
  /var/log/ssl/cert_update.log
fi
```
```
root@user-VirtualBox:/home/user# chmod +x ~/script_update.sh
```

### 10. Поместите скрипт в crontab, чтобы сертификат обновлялся какого-то числа каждого месяца в удобное для вас время.

```
root@user-VilrtualBox:~# crontab -l
1 0 1 * * ~/script_update.sh
```
