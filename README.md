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




