# Домашнее задание к занятию «Управляющие конструкции в коде Terraform» - Пугач Евгений.


---

## `Задание 1`

Инициализируйте проект, выполните код. Приложите скриншот входящих правил «Группы безопасности»  
в ЛК Yandex Cloud или скриншот отказа в предоставлении доступа к preview-версии.

### Ответ:

`Скриншот входящих правил «Группы безопасности»`
![Скриншот 1](https://github.com/PugachEV72/ter-hw-01/blob/terraform-03/img/2023-09-15_23-19-36.png)

---

## `Задание 2`

1. Создайте файл count-vm.tf. Опишите в нём создание двух одинаковых ВМ web-1 и web-2.  
Назначьте ВМ созданную в первом задании группу безопасности.

### Ответ:

![Скриншот 2](https://github.com/PugachEV72/ter-hw-01/blob/terraform-03/img/2023-09-17_13-28-11.png)

![Скриншот 3](https://github.com/PugachEV72/ter-hw-01/blob/terraform-03/img/2023-09-17_13-30-04.png)

2. Создайте файл for_each-vm.tf. Опишите в нём создание двух ВМ с именами "main" и "replica".

### Ответ:

![Скриншот 4](https://github.com/PugachEV72/ter-hw-01/blob/terraform-03/img/2023-09-17_14-27-09.png)

---

## `Задание 3`

Создайте 3 одинаковых виртуальных диска размером 1 Гб с помощью ресурса yandex_compute_disk и  
мета-аргумента count в файле disk_vm.tf. Создайте в том же файле одиночную(использовать count или  
for_each запрещено из-за задания №4) ВМ c именем "storage". 

### Ответ:

![Скриншот 5](https://github.com/PugachEV72/ter-hw-01/blob/terraform-03/img/2023-09-17_14-52-34.png)

![Скриншот 6](https://github.com/PugachEV72/ter-hw-01/blob/terraform-03/img/2023-09-17_14-53-44.png)

---

## `Задание 4`

В файле ansible.tf создайте inventory-файл для ansible. Передайте в него в качестве переменных группы  
виртуальных машин из задания 2.1, 2.2 и 3.2. Выполните код. Приложите скриншот получившегося файла.

### Ответ:

![Скриншот 7](https://github.com/PugachEV72/ter-hw-01/blob/terraform-03/img/2023-09-17_15-18-46.png)

![Скриншот 8](https://github.com/PugachEV72/ter-hw-01/blob/terraform-03/img/2023-09-17_15-21-47.png)

---

## `Ссылка на ветку terraform-03`

[terraform-03](https://github.com/PugachEV72/ter-hw-01/tree/terraform-03)

---
