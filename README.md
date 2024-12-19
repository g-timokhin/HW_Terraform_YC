# Задание 1

**Создан сервисный аккаунт и ключ:**

![image](https://github.com/user-attachments/assets/9fefdaca-39da-4ea5-be0c-354c4aed13df)

**Сгенерирован ssh-ключ, public-часть записана в переменную vms_ssh_public_root_key, проект инициализирован**

![image](https://github.com/user-attachments/assets/dac01482-212b-4abf-947a-425bdaa84137)

**Код был успешно запущен после исправления ошибок в main.tf**

![image](https://github.com/user-attachments/assets/aee1d77a-68a7-4e10-ae6e-bdbe6fa66b07)

В частности было исправлено значение параметра platform_id для ресурса yandex_compute_instance c standart_v4, которое отсутствует в [документации](https://yandex.cloud/ru/docs/compute/concepts/vm-platforms), на standard_v3, соответствующее платформе Intel Ice Lake, рекомендованной для использования в учебных из-за низкой стоимости использования. Значения cores, memory, core_fraction были изменены в соответствии с требованиями к конфигурации используемой платформы, предъявляемыми провайдером (Yandex Cloud)

В результате выполнения кода ресурс был создан успешно 

![image](https://github.com/user-attachments/assets/61e8d916-aa96-4ff5-bd59-d991035b7191)


После перезапуска внешний адрес ВМ был изменен на 

**Подключение к ВМ через ssh**

![image](https://github.com/user-attachments/assets/8a5f2629-7538-45ca-a942-2f94a4f17168)

**Вывод команды curl ifconfig.me**

![image](https://github.com/user-attachments/assets/310a4d0e-92ca-4bc7-9781-68de488c13ae)

При значении true у параметра preemptible ВМ создается прерываемой, т.е она автоматически останавливается спустя некоторое время, что помогает избежать перерасхода средств в случае простоя активной ВМ
Минимизация значения параметра core_fractions также позволяет сэкономить, снизив объем потребления вычислительного времени

# Задание 2

Значения параметров для ресурсов yandex_compute_image и yandex_compute_instance успешно заменены на переменные

![image](https://github.com/user-attachments/assets/1acda303-c204-4f40-9959-b8263371cdea)

# Задание 3

Успешно созданы две ВМ в разных зонах

![image](https://github.com/user-attachments/assets/6dfb2acf-972d-4414-a67d-0de1cd44140d)

![image](https://github.com/user-attachments/assets/f7e9eeaf-0a02-4215-8cda-cd500b3cf251)

# Задание 4

Вывод команды terraform output

![image](https://github.com/user-attachments/assets/520368fb-a162-4ef8-b6dc-548f06b23083)

# Задание 5

Имена ВМ определены с помощью локальных переменных

![image](https://github.com/user-attachments/assets/55d950fb-827e-4ab4-9c43-984e29346703)

# Задание 6

Использование переменных с типом map(object)
На скрине вывод команды terraform plan

![image](https://github.com/user-attachments/assets/995bed36-7e2d-4b5a-b4e4-41ec5493df1e)











