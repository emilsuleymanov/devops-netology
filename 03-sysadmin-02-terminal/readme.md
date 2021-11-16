1. Cd. Название расшифровывается как change directory. Это команда оболочки (sh/bash/...), а не отдельная программа или системный вызов. type cd
cd — это встроенная команда bash, а не внешняя.

2. grep . test.txt -c

3. pstree -p 

systemd(1)─┬─GeckoMain(12371)─┬─Privileged Cont(12463)─┬─{Privileged Cont}(12467)
           │                  │                        ├─{Privileged Cont}(12468)
           │                  │                        ├─{Privileged Cont}(12469)
           │                  │                        ├─{Privileged Cont}(12470)
           │                  │                        ├─{Privileged Cont}(12473)
           │                  │                        ├─{Privileged Cont}(12474)
           │                  │                        ├─{Privileged Cont}(12475)
           │                  │                        ├─{Privileged Cont}(12476)
           │                  │                        ├─{Privileged Cont}(12477)
           │                  │                        ├─{Privileged Cont}(12478)
           │                  │                        ├─{Privileged Cont}(12479)
           │                  │                        ├─{Privileged Cont}(12498)
           │                  │                        ├─{Privileged Cont}(12503)
           │                  │                        ├─{Privileged Cont}(12504)
           │                  │                        ├─{Privileged Cont}(12505)
           │                  │                        ├─{Privileged Cont}(12506)
           │                  │                        ├─{Privileged Cont}(12508)
           │                  │                        ├─{Privileged Cont}(12509)
           │                  │                        └─{Privileged Cont}(12510) 

4. user@RAYbook:$ tty
/dev/pts/1
user@RAYbook:$ ls dir/ 2> /dev/pts/2
user@RAYbook:$ 
![Screen1](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-02-terminal/screen1.png)
![Screen2](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-02-terminal/screen2.png)

Term2:
user@RAYbook:$ ls: невозможно получить доступ к 'dir/': Нет такого файла или каталога
user@RAYbook:$ tty
/dev/pts/2

5. vagrant@vagrant:$ ls
vagrant@vagrant:$ echo "test" > input.txt
vagrant@vagrant:$ ls
input.txt
vagrant@vagrant:$ cat < input.txt > output.txt
vagrant@vagrant:$ cat output.txt
test
vagrant@vagrant:$ 
![Screen3](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-02-terminal/screen3.png)

6. Да, возможно. vagrant@vagrant:$ tty
/dev/pts/2
vagrant@vagrant:$ echo Hello from pts2 to tty1 >/dev/tty1
![Screen4](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-02-terminal/screen4.png)
![Screen5](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-02-terminal/screen5.png)

7.bash 5>&1 создает дескриптор 5 и перенаправляет его в stdout. выводит при команде echo netology > /proc/$$/fd/5 - выведет в дескриптор "5".
В ноаой сессии терминала не выведет, в связи с его отсутствием.
![Screen6](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-02-terminal/screen6.png)
![Screen7](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-02-terminal/screen7.png)

8. user@RAYbook:$ ls dir 3>&1 1>&2 2>&3 | cat > output.txt
user@RAYbook:$ cat output.txt 
ls: невозможно получить доступ к 'dir': Нет такого файла или каталога
user@RAYbook:$ 
![Screen8](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-02-terminal/screen8.png)

9.cat /proc/$$/environ -  содержит переменные окружения. Аналогичный вывод команды - **env.**

10.***/proc/[pid]/cmdline***
'''This read-only file holds the  complete  command  line  for  the
process,  unless  the  process is a zombie.  In the latter case,
there is nothing in this file: that is, a read on this file will
return  0 characters.  The command-line arguments appear in this
file as a set of strings separated by null bytes ('\0'), with  a
further null byte after the last string.''' - полный путь до файла.

***/proc/[pid]/exe***
'''Under Linux 2.2 and later, this file is a symbolic link contain‐
ing  the actual pathname of the executed command.  This symbolic
link can be dereferenced normally; attempting to  open  it  will
open  the  executable.  You can even type /proc/[pid]/exe to run
another copy of the same executable that is being run by process
[pid].   If  the  pathname  has been unlinked, the symbolic link
will contain the string '(deleted)'  appended  to  the  original
pathname.  In a multithreaded process, the contents of this sym‐
bolic link are not available if the main thread has already ter‐
minated (typically by calling pthread_exit(3)).''' - ссылка до файла
запущенного для процесса.

11.** SSE4_2**
![Flags](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-02-terminal/flags.txt)

12. Подключение удалось произвести только с ключом -t в принудительном режиме.
![Screen9](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-02-terminal/screen9.png)

13. В рамках данного задания все успешно получилось, согласно указанной инструкции по узлу:
https://github.com/nelhage/reptyr#readme
![Screen10](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-02-terminal/screen10.png)
![Screen11](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-02-terminal/screen11.png)

14. Команда tee в Linux нужна для записи вывода любой команды в один или несколько файлов. 
Команда, выводит на экран, или же перенаправляет выходной материал команды и копирует его в файл или в переменную.
MAN: tee - read from standard input and write to standard output and files
![Screen12](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-02-terminal/screen12.png)
