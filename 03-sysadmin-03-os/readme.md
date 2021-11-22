#3.3. Операционные системы
1.chdir("/tmp")
![Screen1](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-03-os/screen1.png)

2.
![Screen2](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-03-os/screen2.png)
![Screen3](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-03-os/screen3.png)
/usr/share/misc/magic.mgc

3.При удалении исходного файла и отсутствии возможности пересоздать файл, можно обнулить поток перенаправив на него /dev/null.

```cat /dev/null > /proc/9946/fd/3```

где 9946 это PID процесса nano.

4.Процесс при завершении (как нормальном, так и в результате не обрабатываемого сигнала) освобождает все свои ресурсы и становится «зомби» — пустой записью в таблице процессов, хранящей статус завершения, предназначенный для чтения родительским процессом. 

5.
```commandline
root@vagrant:/home/vagrant# /usr/sbin/opensnoop-bpfcc
PID    COMM               FD ERR PATH
803    vminfo              4   0 /var/run/utmp
608    dbus-daemon        -1   2 /usr/local/share/dbus-1/system-services
608    dbus-daemon        18   0 /usr/share/dbus-1/system-services
608    dbus-daemon        -1   2 /lib/dbus-1/system-services
608    dbus-daemon        18   0 /var/lib/snapd/dbus-1/system-services/
803    vminfo              4   0 /var/run/utmp
608    dbus-daemon        -1   2 /usr/local/share/dbus-1/system-services
608    dbus-daemon        18   0 /usr/share/dbus-1/system-services
608    dbus-daemon        -1   2 /lib/dbus-1/system-services
608    dbus-daemon        18   0 /var/lib/snapd/dbus-1/system-services/
```
6. 
uname
![Screen4](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-03-os/screen4.png)

Part of the utsname information is also accessible via
/proc/sys/kernel/{ostype, hostname, osrelease, version, domainname}.

7. 

; - выполняется несколько команд одновременно последовательно и обеспечивает вывод без зависимости от успеха и отказа других команд.

&& - выполняется командой, только если первая команда выполнена успешно.

set -e  - указывает скрипту чтобы он завершился, если одна из команд вернула ненулевой ответ.

8.

-e  Exit immediately if a command exits with a non-zero status.

-u  Treat unset variables as an error when substituting.


-x  Print commands and their arguments as they are executed.

-o option-name

Set the variable corresponding to option-name:

pipefail the return value of a pipeline is the status of

the last command to exit with a non-zero status,

or zero if no command exited with a non-zero status.

Указав параметр -e скрипт немедленно завершит работу, если любая команда выйдет с ошибкой. По-умолчанию, игнорируются любые неудачи и сценарий продолжит выполнятся.

-u. Благодаря ему оболочка проверяет инициализацию переменных в скрипте. Если переменной не будет, скрипт немедленно завершиться.

Параметр -x очень полезен при отладке. С помощью него bash печатает в стандартный вывод все команды перед их исполнением.

Bash возвращает только код ошибки последней команды в пайпе (конвейере). И параметр -e проверяет только его. Если нужно убедиться, что все команды в пайпах завершились успешно, нужно использовать -o pipefail.

9.
![Screen5](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-03-os/screen5.png)

PROCESS STATE CODES

Here are the different values that the s, stat and state output specifiers (header "STAT" or "S") will display to describe the state of a process:

S    interruptible sleep (waiting for an event to complete)

R    running or runnable (on run queue)

s    is a session leader

l    is multi-threaded (using CLONE_THREAD, like NPTL pthreads do)

+    is in the foreground process group.

