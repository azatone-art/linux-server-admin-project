# Linux Server Administration Project

DevOps-проект по развертыванию и администрированию Linux сервера в Yandex Cloud.

## 📌 Описание

В рамках проекта был развернут сервер на Ubuntu и настроена базовая инфраструктура:
пользователи, безопасность, веб-сервер и мониторинг.

## ⚙️ Что реализовано

- Развертывание сервера в Yandex Cloud
- Настройка пользователей и прав доступа (users, groups, sudo)
- Настройка SSH (отключен вход по паролю)
- Настройка firewall (UFW)
- Установка и настройка Nginx
- Анализ логов (access.log, error.log, journalctl)
- Написание bash-скрипта мониторинга

## 🛠️ Стек

- Linux (Ubuntu)
- Bash
- Nginx
- UFW
- Systemd
- Git

## 📂 Структура проекта

linux-server-project/
├── scripts/
│ └── server_monitor.sh
├── configs/
├── docs/
└── README.md

## 🚀 Запуск скрипта

```bash
cd scripts
chmod +x server_monitor.sh
./server_monitor.sh```


📊 Мониторинг

Скрипт отображает:

- uptime
- загрузку CPU
- использование памяти
- использование диска
- статус nginx

📎 Автор

GitHub: https://github.com/azatone-art
