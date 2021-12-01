#3.8 Сеть 3

1. Подключитесь к публичному маршрутизатору в интернет. Найдите маршрут к вашему публичному IP

![Screen1](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-08-net/screen1.png)


```
route-views>show bgp 178.204.165.64
BGP routing table entry for 178.204.128.0/18, version 1388584040
Paths: (24 available, best #12, table default)
  Not advertised to any peer
  Refresh Epoch 1
  4901 6079 1299 12389 28840
    162.250.137.254 from 162.250.137.254 (162.250.137.254)
      Origin IGP, localpref 100, valid, external
      Community: 65000:10100 65000:10300 65000:10400
      path 7FE054555FE8 RPKI State not found
      rx pathid: 0, tx pathid: 0
  Refresh Epoch 3
  3303 12389 28840
    217.192.89.50 from 217.192.89.50 (138.187.128.158)
      Origin IGP, localpref 100, valid, external
      Community: 3303:1004 3303:1006 3303:1030 3303:3056
      path 7FE0FE2A29F8 RPKI State not found
      rx pathid: 0, tx pathid: 0
  Refresh Epoch 1
  6939 12389 28840
    64.71.137.241 from 64.71.137.241 (216.218.252.164)
      Origin IGP, localpref 100, valid, external
      path 7FE03637E0C0 RPKI State not found
      rx pathid: 0, tx pathid: 0
  Refresh Epoch 1
  7660 2516 12389 28840
    203.181.248.168 from 203.181.248.168 (203.181.248.168)
      Origin IGP, localpref 100, valid, external
      Community: 2516:1050 7660:9003
      path 7FE0C6BD4460 RPKI State not found
      rx pathid: 0, tx pathid: 0
  Refresh Epoch 1
  3267 1299 12389 28840
    194.85.40.15 from 194.85.40.15 (185.141.126.1)
      Origin IGP, metric 0, localpref 100, valid, external
      path 7FE1567F86D0 RPKI State not found
      rx pathid: 0, tx pathid: 0
  Refresh Epoch 1
  57866 3356 12389 28840
    37.139.139.17 from 37.139.139.17 (37.139.139.17)
      Origin IGP, metric 0, localpref 100, valid, external
      Community: 3356:2 3356:22 3356:100 3356:123 3356:501 3356:903 3356:2065
      path 7FE0D5390C00 RPKI State not found
      rx pathid: 0, tx pathid: 0
  Refresh Epoch 1
  7018 3356 12389 28840
    12.0.1.63 from 12.0.1.63 (12.0.1.63)
      Origin IGP, localpref 100, valid, external
      Community: 7018:5000 7018:37232
      path 7FE162BC3560 RPKI State not found
      rx pathid: 0, tx pathid: 0
  Refresh Epoch 1
  3333 1103 12389 28840
    193.0.0.56 from 193.0.0.56 (193.0.0.56)
      Origin IGP, localpref 100, valid, external
      path 7FE0ECC9FFA8 RPKI State not found
      rx pathid: 0, tx pathid: 0
  Refresh Epoch 1
  49788 12552 12389 28840
    91.218.184.60 from 91.218.184.60 (91.218.184.60)
      Origin IGP, localpref 100, valid, external
      Community: 12552:12000 12552:12100 12552:12101 12552:22000
      Extended Community: 0x43:100:1
      path 7FE10BDF71A0 RPKI State not found
      rx pathid: 0, tx pathid: 0
  Refresh Epoch 1
  20912 3257 12389 12389 12389 12389 28840
    212.66.96.126 from 212.66.96.126 (212.66.96.126)
      Origin IGP, localpref 100, valid, external
      Community: 3257:4000 3257:8794 3257:50001 3257:50110 3257:54900 3257:54901 20912:65004
      path 7FE143DB7F10 RPKI State not found
      rx pathid: 0, tx pathid: 0
  Refresh Epoch 1
  8283 1299 12389 28840
    94.142.247.3 from 94.142.247.3 (94.142.247.3)
      Origin IGP, metric 0, localpref 100, valid, external
      Community: 1299:30000 8283:1 8283:101
      unknown transitive attribute: flag 0xE0 type 0x20 length 0x18
        value 0000 205B 0000 0000 0000 0001 0000 205B
              0000 0005 0000 0001 
      path 7FE08EF7D398 RPKI State not found
      rx pathid: 0, tx pathid: 0
  Refresh Epoch 1
  3356 12389 28840
    4.68.4.46 from 4.68.4.46 (4.69.184.201)
      Origin IGP, metric 0, localpref 100, valid, external, best
      Community: 3356:2 3356:22 3356:100 3356:123 3356:501 3356:903 3356:2065
      path 7FE137C44EC8 RPKI State not found
      rx pathid: 0, tx pathid: 0x0
  Refresh Epoch 1
  2497 12389 28840
    202.232.0.2 from 202.232.0.2 (58.138.96.254)
      Origin IGP, localpref 100, valid, external
      path 7FE012A08A70 RPKI State not found
      rx pathid: 0, tx pathid: 0
  Refresh Epoch 1
  1221 4637 12389 28840
    203.62.252.83 from 203.62.252.83 (203.62.252.83)
      Origin IGP, localpref 100, valid, external
      path 7FE054E89930 RPKI State not found
      rx pathid: 0, tx pathid: 0
  Refresh Epoch 1
  852 3356 12389 28840
    154.11.12.212 from 154.11.12.212 (96.1.209.43)
      Origin IGP, metric 0, localpref 100, valid, external
      path 7FE0DD965828 RPKI State not found
      rx pathid: 0, tx pathid: 0
  Refresh Epoch 1
  20130 6939 12389 28840
    140.192.8.16 from 140.192.8.16 (140.192.8.16)
      Origin IGP, localpref 100, valid, external
      path 7FE0E5B4E0F0 RPKI State not found
      rx pathid: 0, tx pathid: 0
  Refresh Epoch 1
  701 1273 12389 28840
    137.39.3.55 from 137.39.3.55 (137.39.3.55)
      Origin IGP, localpref 100, valid, external
      path 7FE119CEA9D0 RPKI State not found
      rx pathid: 0, tx pathid: 0
  Refresh Epoch 1
  3257 12389 12389 12389 12389 28840
    89.149.178.10 from 89.149.178.10 (213.200.83.26)
      Origin IGP, metric 10, localpref 100, valid, external
      Community: 3257:4000 3257:8794 3257:50001 3257:50110 3257:54900 3257:54901
      path 7FE01E6DCDE8 RPKI State not found
      rx pathid: 0, tx pathid: 0
  Refresh Epoch 1
  3549 3356 12389 28840
    208.51.134.254 from 208.51.134.254 (67.16.168.191)
      Origin IGP, metric 0, localpref 100, valid, external
      Community: 3356:2 3356:22 3356:100 3356:123 3356:501 3356:903 3356:2065 3549:2581 3549:30840
      path 7FE07F50B188 RPKI State not found
      rx pathid: 0, tx pathid: 0
  Refresh Epoch 1
  53767 14315 6453 6453 3356 12389 28840
    162.251.163.2 from 162.251.163.2 (162.251.162.3)
      Origin IGP, localpref 100, valid, external
      Community: 14315:5000 53767:5000
      path 7FE0C79469D8 RPKI State not found
      rx pathid: 0, tx pathid: 0
  Refresh Epoch 1
  101 3356 12389 28840
    209.124.176.223 from 209.124.176.223 (209.124.176.223)
      Origin IGP, localpref 100, valid, external
      Community: 101:20100 101:20110 101:22100 3356:2 3356:22 3356:100 3356:123 3356:501 3356:903 3356:2065
      Extended Community: RT:101:22100
      path 7FE17819A578 RPKI State not found
      rx pathid: 0, tx pathid: 0
  Refresh Epoch 1
  3561 3910 3356 12389 28840
    206.24.210.80 from 206.24.210.80 (206.24.210.80)
      Origin IGP, localpref 100, valid, external
      path 7FE119A8B948 RPKI State not found
      rx pathid: 0, tx pathid: 0
  Refresh Epoch 1
  1351 6939 12389 28840
    132.198.255.253 from 132.198.255.253 (132.198.255.253)
      Origin IGP, localpref 100, valid, external
      path 7FE04C3B4190 RPKI State not found
      rx pathid: 0, tx pathid: 0
  Refresh Epoch 1
  19214 174 3356 12389 28840
    208.74.64.40 from 208.74.64.40 (208.74.64.40)
      Origin IGP, localpref 100, valid, external
      Community: 174:21000 174:22013
      path 7FE09EF14460 RPKI State not found
      rx pathid: 0, tx pathid: 0
```

2. Создайте dummy0 интерфейс в Ubuntu. Добавьте несколько статических маршрутов. Проверьте таблицу маршрутизации.

![Screen2](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-08-net/screen2.png)

![Screen3](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-08-net/screen3.png)

3. Проверьте открытые TCP порты в Ubuntu, какие протоколы и приложения используют эти порты? Приведите несколько примеров.

![Screen4](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-08-net/screen4.png)

```
COMMAND    PID            USER   FD   TYPE DEVICE SIZE/OFF NODE NAME
systemd-r  720 systemd-resolve   12u  IPv4  23990      0t0  UDP 127.0.0.53:53 
systemd-r  720 systemd-resolve   13u  IPv4  23991      0t0  TCP 127.0.0.53:53 (LISTEN)
avahi-dae  884           avahi   12u  IPv4  25483      0t0  UDP *:5353 
avahi-dae  884           avahi   13u  IPv6  25484      0t0  UDP *:5353 
avahi-dae  884           avahi   14u  IPv4  25485      0t0  UDP *:50772 
avahi-dae  884           avahi   15u  IPv6  25486      0t0  UDP *:33234 
dhclient  1239            root    6u  IPv4  30923      0t0  UDP *:68 
node_expo 1296   node_exporter    3u  IPv6  31400      0t0  TCP *:9100 (LISTEN)
GeckoMain 2472            user   62u  IPv4 110317      0t0  TCP 192.168.1.9:43440->77.88.55.50:443 (ESTABLISHED)
GeckoMain 2472            user   85u  IPv4 113540      0t0  TCP 192.168.1.9:57600->178.154.131.217:443 (ESTABLISHED)
GeckoMain 2472            user  111u  IPv4 110334      0t0  TCP 192.168.1.9:57602->178.154.131.217:443 (ESTABLISHED)
GeckoMain 2472            user  115u  IPv4 115603      0t0  TCP 192.168.1.9:37054->87.250.247.183:443 (ESTABLISHED)
GeckoMain 2472            user  126u  IPv4 116701      0t0  TCP 192.168.1.9:51204->93.184.220.29:80 (ESTABLISHED)
GeckoMain 2472            user  128u  IPv4  42339      0t0  TCP 192.168.1.9:51862->44.239.124.9:443 (ESTABLISHED)
GeckoMain 2472            user  133u  IPv4 116699      0t0  TCP 192.168.1.9:55994->104.244.42.72:443 (ESTABLISHED)
GeckoMain 2472            user  134u  IPv4 114766      0t0  TCP 192.168.1.9:34830->213.180.204.91:443 (ESTABLISHED)
GeckoMain 2472            user  149u  IPv4 114383      0t0  TCP 192.168.1.9:55434->93.158.134.119:443 (ESTABLISHED)
GeckoMain 2472            user  152u  IPv4 114352      0t0  TCP 192.168.1.9:48782->91.228.74.226:443 (ESTABLISHED)
GeckoMain 2472            user  154u  IPv4 114354      0t0  TCP 192.168.1.9:53466->185.64.190.78:443 (ESTABLISHED)
GeckoMain 2472            user  155u  IPv4 114355      0t0  TCP 192.168.1.9:54504->213.19.162.90:443 (ESTABLISHED)
GeckoMain 2472            user  156u  IPv4 114356      0t0  TCP 192.168.1.9:56846->104.73.92.241:443 (ESTABLISHED)
GeckoMain 2472            user  158u  IPv4  40769      0t0  TCP 192.168.1.9:41706->140.82.112.26:443 (ESTABLISHED)
GeckoMain 2472            user  163u  IPv4 116709      0t0  TCP 192.168.1.9:54514->213.19.162.90:443 (ESTABLISHED)
GeckoMain 2472            user  164u  IPv4 116710      0t0  TCP 192.168.1.9:56856->104.73.92.241:443 (ESTABLISHED)
GeckoMain 2472            user  167u  IPv4 116713      0t0  TCP 192.168.1.9:54522->213.19.162.90:443 (ESTABLISHED)
GeckoMain 2472            user  169u  IPv4 113913      0t0  TCP 192.168.1.9:36216->185.4.64.197:443 (ESTABLISHED)
GeckoMain 2472            user  172u  IPv4 113920      0t0  TCP 192.168.1.9:34104->139.45.220.138:80 (ESTABLISHED)
GeckoMain 2472            user  173u  IPv4 113566      0t0  TCP 192.168.1.9:36218->185.4.64.197:443 (ESTABLISHED)
GeckoMain 2472            user  175u  IPv4 113568      0t0  TCP 192.168.1.9:36222->185.4.64.197:443 (ESTABLISHED)
GeckoMain 2472            user  176u  IPv4 113569      0t0  TCP 192.168.1.9:36224->185.4.64.197:443 (ESTABLISHED)
GeckoMain 2472            user  177u  IPv4 115171      0t0  TCP 192.168.1.9:41520->34.107.221.82:80 (ESTABLISHED)
GeckoMain 2472            user  178u  IPv4 116714      0t0  TCP 192.168.1.9:56864->104.73.92.241:443 (ESTABLISHED)
GeckoMain 2472            user  180u  IPv4 113578      0t0  TCP 192.168.1.9:36230->185.4.64.197:443 (ESTABLISHED)
GeckoMain 2472            user  182u  IPv4 113921      0t0  TCP 192.168.1.9:34106->139.45.220.138:80 (ESTABLISHED)
GeckoMain 2472            user  185u  IPv4 115141      0t0  TCP 192.168.1.9:36244->185.4.64.197:443 (ESTABLISHED)
GeckoMain 2472            user  215u  IPv4 115193      0t0  TCP 192.168.1.9:41522->34.107.221.82:80 (ESTABLISHED)
GeckoMain 2472            user  270u  IPv4 115269      0t0  TCP 192.168.1.9:47362->64.233.162.94:443 (ESTABLISHED)
GeckoMain 2472            user  286u  IPv4 113970      0t0  TCP 192.168.1.9:60338->142.251.1.94:80 (ESTABLISHED)
GeckoMain 2472            user  288u  IPv4 113973      0t0  TCP 192.168.1.9:48524->213.180.193.165:443 (ESTABLISHED)
GeckoMain 2472            user  291u  IPv4 113987      0t0  TCP 192.168.1.9:53576->151.101.192.84:443 (ESTABLISHED)
GeckoMain 2472            user  295u  IPv4 113658      0t0  TCP 192.168.1.9:55246->93.158.134.119:443 (ESTABLISHED)
GeckoMain 2472            user  298u  IPv4 115289      0t0  TCP 192.168.1.9:58988->178.154.131.216:443 (ESTABLISHED)
GeckoMain 2472            user  301u  IPv4 115290      0t0  TCP 192.168.1.9:55278->93.158.134.119:443 (ESTABLISHED)
GeckoMain 2472            user  309u  IPv4 116173      0t0  TCP 192.168.1.9:39006->142.251.1.156:443 (ESTABLISHED)
GeckoMain 2472            user  319u  IPv4 115294      0t0  TCP 192.168.1.9:55300->93.158.134.119:443 (ESTABLISHED)
GeckoMain 2472            user  326u  IPv4 116287      0t0  TCP 192.168.1.9:54768->217.69.133.145:443 (ESTABLISHED)
GeckoMain 2472            user  335u  IPv4 116303      0t0  TCP 192.168.1.9:45052->74.125.131.157:443 (ESTABLISHED)
gvfsd-smb 3002            user   10u  IPv4  46626      0t0  TCP 192.168.1.9:37238->192.168.1.1:139 (ESTABLISHED)
gvfsd-smb 3002            user   11u  IPv4  47551      0t0  TCP 192.168.1.9:37240->192.168.1.1:139 (ESTABLISHED)
cupsd     3243            root    6u  IPv6  48291      0t0  TCP [::1]:631 (LISTEN)
cupsd     3243            root    7u  IPv4  48292      0t0  TCP 127.0.0.1:631 (LISTEN)
cups-brow 3244            root    7u  IPv4  48298      0t0  UDP *:631 
VBoxHeadl 8417            user   22u  IPv4  93094      0t0  TCP 127.0.0.1:2222 (LISTEN)
```

4. Проверьте используемые UDP сокеты в Ubuntu, какие протоколы и приложения используют эти порты? 

![Screen5](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-08-net/screen5.png)

5. Используя diagrams.net, создайте L3 диаграмму вашей домашней сети или любой другой сети, с которой вы работали.

![Screen6](https://github.com/emilsuleymanov/devops-netology/blob/main/03-sysadmin-08-net/screen6.png)

