# Linux Server Administration Project

Учебный DevOps-проект по настройке Linux сервера.

## Что реализовано

- Развернут сервер в Yandex Cloud
- Настроены пользователи и права доступа
- Настроен SSH (отключен вход по паролю)
- Настроен firewall (UFW)
- Установлен и настроен Nginx
- Проведен анализ логов (access.log, error.log)
- Написан bash-скрипт мониторинга сервера

## Стек

- Linux (Ubuntu)
- Bash
- Nginx
- UFW
- Systemd

## Скрипты

### server_monitor.sh

Проверяет:

- uptime
- disk usage
- memory
- CPU load
- статус nginx
