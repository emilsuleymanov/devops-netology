
### Домашнее задание к занятию 5.1. Введение в виртуализацию. Типы и функции гипервизоров. Обзор рынка вендоров и областей применения.

### Задание 1. Чем аппаратная и паравиртуализации отличаются от полной виртуализации? В чём разница при работе с ядром гостевой ОС для полной и паравиртуализации?
 
1.1. Аппаратная виртуализация предполагает собой установку гипервизора на непосредственно сервер (железо). Одним из таких опытов была установка Microsoft Hyper-V Core и Vmware ESXI.
Отмечу, что использование аппаратной виртуализации имеет неудобноство управления и обслуживания, в связи с чем для администрирования и создания тех же виртуальных машин и управления гипервизором администратору требуется установка клиентской части для подключения.
Но при этом не потребляются аппаратные ресурсы, так как операционная система имеет минимальный набор системных файлов, требуемых для работы гипервизора. (без графического интерфейса, лишь с наличием командой строки).

1.1* Полная виртуализация - это аппаратная виртуализация. И имеет отличия только с паравиртуализацией и виртуализацией на уровне ОС.
 
1.2. Паравиртуализация схожа с аппаратной виртуализацией. Как пример можно привести серверные операционные системы компании Microsoft. Microsoft Windows Server уже имеет графический интерфейс и может выполнять различного рода задачи. 
Одним из них может выступать добавление роли Hyper-V. В данном случае это уже будет паравиртуализация. Не потребуется дополнительной клиентской части для администраторов. Достаточно будет зайти по RDP на сам сервер и произвести подключение к гипервизору 
для проведения обслуживания виртуальных машин. Однако в этом случае недостатком можно считать то, что часть аппаратных ресурсов будет тратится на саму операционную систему.
Например еще один из вариантов. Можно воспользоваться в виде паравиртуализации, но путем установки VirtalBox на тот же программный продукт Microsoft Windows Server.
 
1.3. Виртуализация на уровне ОС позволяет установку программного продукта, при помощи которого можно создать клон (мини-копии) управляемой операционной системы.
К недостаткам можно отнести то, что возможно использование только однотипной среды и нет возможности создания виртуальных машин, отличных от основной операционной системы.

2. Отличия при работе с ядром. В случае аппаратной (полной) виртуализации - гостевые машины полностью управляют ядром.
В случае паравиртуализации - перед использованием ядро системы модифицируется для взаимодействия гипервизора с аппаратной частью.
В случае виртуализации на уровне ОС - используется одно ядро самой хостовой операционной системы и не имеет возможности модификации и управления.


### Выберите один из вариантов использования организации физических серверов, в зависимости от условий использования.

Организация серверов:
физические сервера,
паравиртуализация,
виртуализация уровня ОС.
Условия использования:
Высоконагруженная база данных, чувствительная к отказу.
Различные web-приложения.
Windows системы для использования бухгалтерским отделом.
Системы, выполняющие высокопроизводительные расчеты на GPU.
Опишите, почему вы выбрали к каждому целевому использованию такую организацию.
 
```
Высоконагруженная база данных, чувствительная к отказу - Физический сервер
Требуется более высокая производительность, аппаратное размещение дает более высокий отклик и сокращает точки отказа в виде гипервизора хостовой машины. Возможно использование полной аппаратной виртуализации при использовании кластеризации для повышения доступности.
         
Различные Web-приложения - Виртуализация уровня ОС (контейнеры). Требуется меньше ресурсов, выше скорость масштабирования при необходимости расширения. Нет жестких требований к аппаратным ресурсам, требует меньше ресурсов на администрирование.
 
Windows системы для использования бухгалтерским отделом - Паравиртуализация, при ней эффективнее делать резервное копирование - клонирование всей виртуальной машины. Возможность расширения ресурсов на уровне виртуальной машины. Нет критичных требований к доступу к аппаратной составляющей сервера.
        
Системы, выполняющие высокопроизводительные расчеты на GPU - Физические сервера. 
Для аппаратных расчетов требуется максимальный доступ к аппаратным ресурсам, который физический сервер дает более эффективно, в других случаях, доступ осуществляется через хостовую ОС. 
```

### Выберите подходящую систему управления виртуализацией для предложенного сценария. Детально опишите ваш выбор.


Сценарии:
1. 100 виртуальных машин на базе Linux и Windows, общие задачи, нет особых требований. Преимущественно Windows based инфраструктура, требуется реализация программных балансировщиков нагрузки, репликации данных и автоматизированного механизма создания резервных копий.
2. Требуется наиболее производительное бесплатное open source решение для виртуализации небольшой (20-30 серверов) инфраструктуры на базе Linux и Windows виртуальных машин.
3. Необходимо бесплатное, максимально совместимое и производительное решение для виртуализации Windows инфраструктуры.
4. Необходимо рабочее окружение для тестирования программного продукта на нескольких дистрибутивах Linux.

```
1. VSphere. Удобство настройки и обслуживания. 
2. KVM. Бесплатный. Имеет стабильное развитие и частоту обновлений.
3. Hyper-V. Решение компании Microsoft в основном используется для продуктов линейки Windows, но также поддерживает Linux.
4. VirtualBox. Удобно создавать виртуальные машины, в том числе через Vagrant.
```        

### Опишите возможные проблемы и недостатки гетерогенной среды виртуализации (использования нескольких систем управления виртуализацией одновременно) и что необходимо сделать для минимизации этих рисков и проблем. Если бы у вас был выбор, то создавали бы вы гетерогенную среду или нет? Мотивируйте ваш ответ примерами.

```
В гетерогенной среде сокращена возможность автоматического распределения вычислительных ресурсов, что увеличивает вероятность появления дефицита вычислительных ресурсов на одном из участков виртуальной среды. Сложно управлять виртуальными машинами в такой среде, особенно когда их надо обслуживать, перемещать, давать дополнительные ресурсы, когда возможно на одном сервере еще есть ресурсы, а на другом уже заканчиваются, а перераспределить не получится.
```

