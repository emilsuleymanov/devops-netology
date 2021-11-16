#3.1. Работа в терминале, лекция 1

**Vagrant и VirtualBox установлен.**

**Также был установлен образ Ubuntu 20.04.**
![Screen1](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-01-terminal/screen1.png)

Под систему было выделено 2 CPU, 1024 Mb memory, 4MB Video, 64 GB HDD.

![Screen2](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-01-terminal/screen2.png)

**Для добавления дополнительных ресурсов, необходимо отключить виртуальную машину через VirtualBox.**

**Для добавления через Vagrantfile:**

  Vagrant.configure("2") do |config|

  config.vm.box = "bento/ubuntu-20.04"

  config.vm.provider "virtualbox" do |v|

  v.customize ["modifyvm", :id, "--memory", "2048"]

  v.customize ["modifyvm", :id, "--cpus", "2"]

  end

  end

![Screen3](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-01-terminal/screen3.png)

  8.man bash

  8.1 какой переменной можно задать длину журнала. HISTSIZE. man line 1146.

![Screen4](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-01-terminal/screen4.png)

  8.2 

  Для того что бы запись истории не велась для команд, которые начинаются с пробела, достаточно переменной HISTCONTROL присвоить один из двух параметров:

  ignorespace — не записывать команды, которые начинаются с пробела;

  ignoreboth — не записывать команду, которая начинается с пробела, либо команду, которая дублирует предыдущую.

9.

![Screen5](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-01-terminal/screen5.png)

![Screen6](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-01-terminal/screen6.png)

10. touch testfile{1..10000}. Проблем с созданием 30000 файлов не выявил.

![Screen7](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-01-terminal/screen7.png)

При создании 300.000 файлов возникла ошибка: bash: /usr/bin/touch: Слишком длинный список аргументов

Это связано с установленным количеством лимитов. Узнать и исправить количество лимитов можно с помощью команды ulimit

Она дает возможность контролировать ресурсы, доступные для оболочки или запущенного ею процесса.

11. Проверяет условие у -d /tmp и возвращает ее статус (0 или 1), наличие каталога /tmp.

12. vagrant@vagrant:/tmp$ mkdir path_directory

  vagrant@vagrant:/tmp$ cp /bin/bash /tmp/path_directory

  vagrant@vagrant:/tmp$ export PATH="/tmp/path_directory/:$PATH"

  vagrant@vagrant:/tmp$ type -a bash

  bash is /tmp/path_directory/bash

  bash is /usr/bin/bash

  bash is /bin/bash

![Screen8](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-01-terminal/screen8.png)

  13. Команды планировщиков задач. at — это программа, которая позволяет вам планировать выполнение команд в определенное время. Задания, созданные с помощью at , выполняются только один раз.

  batch или его псевдоним at -b планирует задания и выполняет их в пакетной очереди, если позволяет уровень загрузки системы. По умолчанию задания выполняются, когда средняя загрузка системы ниже 1,5.

  14. Виртуальная машина была отключена командой vagrant halt.


