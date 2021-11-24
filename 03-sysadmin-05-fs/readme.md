#03-sysadmin-05-fs

1. Разрежённый файл (англ. sparse file) — файл, в котором последовательности нулевых байтов[1] заменены на информацию об этих последовательностях (список дыр).

2. Нет. Жесткая ссылка и файл, для которой она создавалась имеют одинаковые inode.

3.Сделайте vagrant destroy на имеющийся инстанс Ubuntu. Замените содержимое Vagrantfile.

![Screen1](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-05-fs/screen1.png)
![Screen2](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-05-fs/screen2.png)

4. Используя fdisk, разбейте первый диск на 2 раздела.

![Screen3](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-05-fs/screen3.png)
![Screen4](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-05-fs/screen4.png)
![Screen5](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-05-fs/screen5.png)

5.
Используя sfdisk, перенесите данную таблицу разделов на второй диск.

![Screen6](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-05-fs/screen6.png)

6. Соберите mdadm RAID1 на паре разделов 2 Гб.

![Screen7](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-05-fs/screen7.png)

7. Соберите mdadm RAID0 на второй паре маленьких разделов.

![Screen8](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-05-fs/screen8.png)

8. Создайте 2 независимых PV на получившихся md-устройствах.

![Screen9](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-05-fs/screen9.png)

9. Создайте общую volume-group на этих двух PV.

![Screen10](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-05-fs/screen10.png)

10. Создайте LV размером 100 Мб, указав его расположение на PV с RAID0.\

![Screen11](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-05-fs/screen11.png)

11.Создайте mkfs.ext4 на получившемся LV.

![Screen12](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-05-fs/screen12.png)

12. Смонтируйте этот раздел в любую директорию, например, /tmp/new.

![Screen13](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-05-fs/screen13.png)

13. Поместите туда тестовый файл, например wget https://mirror.yandex.ru/ubuntu/ls-lR.gz -O /tmp/new/test.gz.

![Screen14](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-05-fs/screen14.png)

14. Прикрепите вывод lsblk.

![Screen15](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-05-fs/screen15.png)

15. Протестируйте целостность файла.

![Screen16](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-05-fs/screen16.png)

16. Используя pvmove, переместите содержимое PV с RAID0 на RAID1.

**pvmove -n lvol0 /dev/md1 /dev/md0 не сработала. Почему?**

Пришлось переместить все физические пространства. (Согласно man - Move all physical extents that are used by simple LVs on the specified PV to free physical
extents elsewhere in the VG.)

![Screen17](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-05-fs/screen17.png)

17. Сделайте --fail на устройство в вашем RAID1 md

![Screen18](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-05-fs/screen18.png)

18. Подтвердите выводом dmesg, что RAID1 работает в деградированном состоянии.

![Screen19](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-05-fs/screen19.png)

19. Протестируйте целостность файла, несмотря на "сбойный" диск он должен продолжать быть доступен.

![Screen20](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-05-fs/screen20.png)

20. Тестовый хост погашен командой  vagrant destroy.

