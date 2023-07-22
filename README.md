# Домашнее задание к занятию «Введение в Terraform» - Пугач Евгений.


---

## `Чеклист готовности к домашнему заданию`

![Скриншот 1](https://github.com/PugachEV72/Images/blob/master/2023-07-21_23-14-56.png)

---

## `Задание 1`

1. Перейдите в каталог src. Скачайте все необходимые зависимости, использованные в проекте.
2. Изучите файл .gitignore. В каком terraform файле согласно этому .gitignore допустимо сохранить  
   личную, секретную информацию?

### Ответ:

![Скриншот 2](https://github.com/PugachEV72/Images/blob/master/2023-07-22_00-04-43.png)

Файл personal с расширением .auto.tfvars. С этим расширением, каким бы ни было имя файла, переменные  
внутри этих файлов будут автоматически загружены во время terraform plan or apply. Также лмчная информация  
может находиться в файле terraform.tfstate м внутри каталога .terraform, которые также попадают под правила,  
описанные в данном .gitignore-файле.

---

3. Выполните код проекта. Найдите в State-файле секретное содержимое созданного ресурса random_password,  
   пришлите в качестве ответа конкретный ключ и его значение.

### Ответ:

![Скриншот 3](https://github.com/PugachEV72/Images/blob/master/2023-07-22_00-09-45.png)

![Скриншот 4](https://github.com/PugachEV72/Images/blob/master/2023-07-22_00-17-20.png)

![Скриншот 5](https://github.com/PugachEV72/Images/blob/master/2023-07-22_00-17-58.png)

![Скриншот 6](https://github.com/PugachEV72/Images/blob/master/2023-07-22_00-21-36.png)

---

4. Раскомментируйте блок кода, примерно расположенный на строчках 29-42 файла main.tf. Выполните команду  
   terraform validate. Объясните в чем заключаются намеренно допущенные ошибки? Исправьте их.

### Ответ:

![Скриншот 7](https://github.com/PugachEV72/Images/blob/master/2023-07-22_00-29-21.png)

Блок ресурса должен иметь 2 значения тип и имя, в примере указано одно значение, из-за чего возникает ошибка.
Имя не может начинаться с цифры, но межет начинаться с (_) или буквы. Также допущена ошибка в формате  
обращения к ресурсу для использования значения.

Внесенные исправления:

![Скриншот 8](https://github.com/PugachEV72/Images/blob/master/2023-07-22_00-46-27.png)

---

5. Выполните код. В качестве ответа приложите вывод команды docker ps.
6. Замените имя docker-контейнера в блоке кода на hello_world, выполните команду terraform apply -auto-approve.  
   Объясните своими словами, в чем может быть опасность применения ключа -auto-approve ? В качестве ответа  
   дополнительно приложите вывод команды docker ps.
7. Уничтожьте созданные ресурсы с помощью terraform. Убедитесь, что все ресурсы удалены. Приложите содержимое  
   файла terraform.tfstate.

### Ответ:

![Скриншот 9](https://github.com/PugachEV72/Images/blob/master/2023-07-22_00-50-40.png)

![Скриншот 10](https://github.com/PugachEV72/Images/blob/master/2023-07-22_00-56-37.png)

Опасность применения ключа -auto-approve, заключается в том, что команда terraform apply -auto-approve пропускает  
интерактивное утверждение плана перед применением.

![Скриншот 11](https://github.com/PugachEV72/Images/blob/master/2023-07-22_01-01-39.png)

---

8. Объясните, почему при этом не был удален docker образ nginx:latest ?

### Ответ:

Если Keep_locally имеет значение true, то образ Docker не будет удален при операции уничтожения, если - false, то  
произойдет удаление образа из локального хранилища при операции уничтожения.

![Скриншот 12](https://github.com/PugachEV72/Images/blob/master/2023-07-22_21-12-29.png)

---

### Дополнительные задания (со звездочкой*)


## `Задание 2`

В качестве ответа приложите plan для создаваемого ресурса.

### Ответ:

![Скриншот 13](https://github.com/PugachEV72/Images/blob/master/2023-07-22_16-26-06.png)

---

