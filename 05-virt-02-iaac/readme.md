
### Опишите своими словами основные преимущества применения на практике IaaC паттернов.
 
Уменьшение ошибок из-за человеческого фактора при развертывании инфраструктуры за счет того что конфигурация храниться в виде кода и она постоянна.
Уменьшение времени развертывания за счет того что все действия по установке происходят автоматически.
Увеличение скорости за счет автоматизации рутинных задач.
Более прозрачная и легкая поддержка и развитие инфраструктуры. Для того чтобы понять как работает продукт и на каком стеке он работает достаточно взглянуть на описание виртуальной машины.
Увеличение надежности за счет создания тестовых сред идентичных к промышленным.
 
### Какой из принципов IaaC является основополагающим?
 
основополагающий принцип IAAC это ускорение производства и вывода продукта на рынок.
Также это стабильность среды, устранение дрейфа конфигураций и более быстрая и эффективная разработка.
 
### Чем Ansible выгодно отличается от других систем управление конфигурациями?
 
Ansible отличается простотой использования. Не требует установки клиента на саму систему - достаточно SSH с ключами доступа к серверу. 
Написана на Python и расширяется за счет модулей.
 
### Какой, на ваш взгляд, метод работы систем конфигурации более надёжный push или pull?
 
Более надежный метод - Push. Применение конфигурации распростроняемой данным методом уменьшает количество вероятных точек отказа.
 
### Установить на личный компьютер VirtualBox, Vagrant, Ansible
![Screen1](https://github.com/emilsuleymanov/devops-netology/blob/main/05-virt-02-iaac/screen1.png)

 
### Воспроизвести практическую часть лекции самостоятельно.

```
user@user-VirtualBox:~/vagrant$ vagrant up
Bringing machine 'server1.netology' up with 'virtualbox' provider...
==> server1.netology: Importing base box 'bento/ubuntu-20.04'...
==> server1.netology: Matching MAC address for NAT networking...
==> server1.netology: Checking if box 'bento/ubuntu-20.04' version '202112.19.0' is up to date...
==> server1.netology: Setting the name of the VM: server1.netology
==> server1.netology: Clearing any previously set network interfaces...
==> server1.netology: Preparing network interfaces based on configuration...
    server1.netology: Adapter 1: nat
    server1.netology: Adapter 2: hostonly
==> server1.netology: Forwarding ports...
    server1.netology: 22 (guest) => 20011 (host) (adapter 1)
    server1.netology: 22 (guest) => 2222 (host) (adapter 1)
==> server1.netology: Running 'pre-boot' VM customizations...
==> server1.netology: Booting VM...
==> server1.netology: Waiting for machine to boot. This may take a few minutes...
    server1.netology: SSH address: 127.0.0.1:2222
    server1.netology: SSH username: vagrant
    server1.netology: SSH auth method: private key
    server1.netology: Warning: Connection reset. Retrying...
    server1.netology: Warning: Remote connection disconnect. Retrying...
    server1.netology: Warning: Connection reset. Retrying...
    server1.netology: Warning: Remote connection disconnect. Retrying...
    server1.netology: Warning: Connection reset. Retrying...
    server1.netology:
    server1.netology: Vagrant insecure key detected. Vagrant will automatically replace
    server1.netology: this with a newly generated keypair for better security.
    server1.netology:
    server1.netology: Inserting generated public key within guest...
    server1.netology: Removing insecure key from the guest if it's present...
    server1.netology: Key inserted! Disconnecting and reconnecting using new SSH key...
==> server1.netology: Machine booted and ready!
==> server1.netology: Checking for guest additions in VM...
    server1.netology: The guest additions on this VM do not match the installed version of
    server1.netology: VirtualBox! In most cases this is fine, but in rare cases it can
    server1.netology: prevent things such as shared folders from working properly. If you see
    server1.netology: shared folder errors, please make sure the guest additions within the
    server1.netology: virtual machine match the version of VirtualBox you have installed on
    server1.netology: your host and reload your VM.
    server1.netology:
    server1.netology: Guest Additions Version: 6.1.30 r148432
    server1.netology: VirtualBox Version: 6.0
==> server1.netology: Setting hostname...
==> server1.netology: Configuring and enabling network interfaces...
==> server1.netology: Mounting shared folders...
    server1.netology: /vagrant => /home/user/vagrant
==> server1.netology: Running provisioner: ansible...
    server1.netology: Running ansible-playbook...
 
PLAY [nodes] *******************************************************************
 
TASK [Gathering Facts] *********************************************************
ok: [server1.netology]
 
TASK [Create directory for ssh-keys] *******************************************
ok: [server1.netology]
 
TASK [Adding rsa-key in /root/.ssh/authorized_keys] ****************************
changed: [server1.netology]
 
TASK [Checking DNS] ************************************************************
changed: [server1.netology]
 
TASK [Installing tools] ********************************************************
ok: [server1.netology] => (item=git)
ok: [server1.netology] => (item=curl)
 
TASK [Installing docker] *******************************************************
changed: [server1.netology]
 
TASK [Add the current user to docker group] ************************************
changed: [server1.netology]
 
PLAY RECAP *********************************************************************
server1.netology           : ok=7    changed=4    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0 
```

![Screen2](https://github.com/emilsuleymanov/devops-netology/blob/main/05-virt-02-iaac/screen2.png)
![Screen3](https://github.com/emilsuleymanov/devops-netology/blob/main/05-virt-02-iaac/screen3.png)
![Screen4](https://github.com/emilsuleymanov/devops-netology/blob/main/05-virt-02-iaac/screen4.png)

