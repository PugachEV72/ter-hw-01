# Домашнее задание к занятию «Продвинутые методы работы с Terraform» - Пугач Евгений.


---

## `Задание 1`

Создайте одну ВМ, используя remote-модуль. Добавьте в файл cloud-init.yml установку nginx.  
Предоставьте скриншот подключения к консоли и вывод команды sudo nginx -t.

### Ответ:

`Скриншот вывода команды nginx -t`
![Скриншот 1](https://github.com/PugachEV72/ter-hw-01/blob/terraform-04/img/2023-09-25_00-44-34.png)

---

## `Задание 2`

1. Напишите локальный модуль vpc, который будет создавать 2 ресурса: одну сеть и одну подсеть.  
2. Откройте terraform console и предоставьте скриншот содержимого модуля.   
3. Сгенерируйте документацию к модулю с помощью terraform-docs.

### Ответ:

`1. Скриншот main.tf`
![Скриншот 2](https://github.com/PugachEV72/ter-hw-01/blob/terraform-04/img/2023-10-01_22-53-45.png)

[Модуль VPC](https://github.com/PugachEV72/ter-hw-01/blob/terraform-04/src/vpc)

`2. Скриншот содержимого модуля`
![Скриншот 3](https://github.com/PugachEV72/ter-hw-01/blob/terraform-04/img/2023-10-01_22-48-56.png)

`Документация к модулю`
[Файл vpc_doc](https://github.com/PugachEV72/ter-hw-01/blob/terraform-04/src/vpc/vpc_doc.md)

## `Задание 3`

1. Выведите список ресурсов в стейте.
2. Полностью удалите из стейта модуль vpc.
3. Полностью удалите из стейта модуль vm.
4. Импортируйте всё обратно. Проверьте terraform plan. Изменений быть не должно. Приложите список  
выполненных команд и скриншоты процессы.

### Ответ:

![Скриншот 4](https://github.com/PugachEV72/ter-hw-01/blob/terraform-04/img/2023-10-02_00-22-30.png)

![Скриншот 5](https://github.com/PugachEV72/ter-hw-01/blob/terraform-04/img/2023-10-02_00-23-41.png)

![Скриншот 6](https://github.com/PugachEV72/ter-hw-01/blob/terraform-04/img/2023-10-02_00-28-55.png)

![Скриншот 7](https://github.com/PugachEV72/ter-hw-01/blob/terraform-04/img/2023-10-02_00-25-38.png)

---

## `Дополнительные задания (со звёздочкой*)`

## `Задание 4`

Измените модуль vpc так, чтобы он мог создать подсети во всех зонах доступности, переданных в переменной  
типа list(object) при вызове модуля. Предоставьте код, план выполнения, результат из консоли YC.

### Ответ:

`Ссылка на модуль`
[Модуль VPC](https://github.com/PugachEV72/ter-hw-01/tree/terraform-04/src/vpc2)

`План выполнения`
![Скриншот 8](https://github.com/PugachEV72/ter-hw-01/blob/terraform-04/img/2023-10-07_15-29-29.png)

`Результат из консоли YC`
![Скриншот 9](https://github.com/PugachEV72/ter-hw-01/blob/terraform-04/img/2023-10-07_15-30-23.png)

![Скриншот 10](https://github.com/PugachEV72/ter-hw-01/blob/terraform-04/img/2023-10-07_15-30-49.png)

![Скриншот 11](https://github.com/PugachEV72/ter-hw-01/blob/terraform-04/img/2023-10-07_15-31-54.png)

---

## `Ссылка на ветку terraform-04`

[terraform-04](https://github.com/PugachEV72/ter-hw-01/tree/terraform-04)

---

## `Доработка`

Файлы main_old и main_old1 были оставлены специально для того, чтобы было наглядно видно, как изменялся  
файл main.tf в процессе выполнения домашнего задания, так как последняя версия кардинально отличается от  
начальной. Файлы удалены.

---
