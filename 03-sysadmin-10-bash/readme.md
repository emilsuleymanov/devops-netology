#4.1. Командная оболочка Bash: Практические навыки

```
1. Есть скрипт:

a=1
b=2
c=a+b
d=$a+$b
e=$(($a+$b))
```

```
c=a+b  Потому что "a+b" это строка
d=1+2  получится строка "1+2"
e=3 произойдет сложение 1 + 2
```
2. На нашем локальном сервере упал сервис и мы написали скрипт, который постоянно проверяет его доступность, записывая дату проверок до тех пор, пока сервис не станет доступным. В скрипте допущена ошибка, из-за которой выполнение не может завершиться, при этом место на Жёстком Диске постоянно уменьшается. Что необходимо сделать, чтобы его исправить.

```
while ((1 == 1)); do
curl https://localhost:4757
if (($? != 0)); then
date >>curl.log
sleep 3
else
echo "Service start"
break
fi
done
```

Необходимо написать скрипт, который проверяет доступность трёх IP: 192.168.0.1, 173.194.222.113, 87.250.250.242 по 80 порту и записывает результат в файл log. Проверять доступность необходимо пять раз для каждого узла.

```
hosts=(192.168.0.1 173.194.222.113 87.250.250.24)
timeout=5
for i in {1..5}
do
date >>hosts.log
for h in ${hosts[@]}
do
curl -Is --connect-timeout $timeout $h:80 >/dev/null
echo "    check" $h status=$? >>hosts.log
done
done
```
![Screen1](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-10-bash/screen1.png)

3. Необходимо написать скрипт, который проверяет доступность трёх IP: 192.168.0.1, 173.194.222.113, 87.250.250.242 по 80 порту и записывает результат в файл log. Проверять доступность необходимо пять раз для каждого узла.

```
#!/bin/bash
hosts=(192.168.0.1 173.194.222.113 87.250.250.24)
timeout=5
res=0

while (($res == 0))
do
for h in ${hosts[@]}
do
curl -Is --connect-timeout $timeout $h:80 >/dev/null
res=$?
if (($res != 0))
then
echo "    ERROR on " $h status=$res >>hosts2.log
fi
done
done
```

![Screen2](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-10-bash/screen2.png)


