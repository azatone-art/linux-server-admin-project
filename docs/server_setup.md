# Server Setup

## 1. Создание виртуальной машины

В облаке Yandex Cloud была создана виртуальная машина со следующими параметрами:

* Образ: Ubuntu 22.04 LTS
* Тип: Virtual Machine (Compute Cloud)
* Доступ: SSH по ключу

---

## 2. Управление пользователями

Создание нового пользователя:

```bash
sudo adduser devops
```

Добавление пользователя в группу sudo:

```bash
sudo usermod -aG sudo devops
```

Проверка групп:

```bash
groups devops
```

Переключение на пользователя:

```bash
su - devops
```

---

## 3. Настройка SSH

Редактирование конфигурации SSH:

```bash
sudo vim /etc/ssh/sshd_config
```

Изменения:

```text
PermitRootLogin no
PasswordAuthentication no
```

Добавление SSH ключа для пользователя:

```bash
mkdir -p ~/.ssh
vim ~/.ssh/authorized_keys
```

Назначение прав:

```bash
chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys
```

Перезапуск SSH:

```bash
sudo systemctl restart ssh
```

Проверка подключения:

```bash
ssh devops@<server_ip>
```

---

## 4. Настройка Firewall (UFW)

Установка:

```bash
sudo apt install -y ufw
```

Разрешение доступа:

```bash
sudo ufw allow OpenSSH
sudo ufw allow 80
```

Включение firewall:

```bash
sudo ufw enable
```

Проверка статуса:

```bash
sudo ufw status
```

---

## 5. Установка и настройка Nginx

Установка:

```bash
sudo apt install -y nginx
```

Проверка статуса:

```bash
sudo systemctl status nginx
```

Включение автозапуска:

```bash
sudo systemctl enable nginx
```

Проверка через браузер:

```
http://<server_ip>
```

Проверка через CLI:

```bash
curl http://localhost
```

---

## 6. Анализ логов

Просмотр access.log:

```bash
sudo tail /var/log/nginx/access.log
```

Просмотр в реальном времени:

```bash
sudo tail -f /var/log/nginx/access.log
```

Поиск ошибок:

```bash
sudo grep 404 /var/log/nginx/access.log
```

Просмотр error.log:

```bash
sudo tail /var/log/nginx/error.log
```

Системные логи:

```bash
journalctl -u nginx
journalctl -xe
```

---

## 7. Мониторинг сервера

Создание скрипта:

```bash
vim ~/scripts/server_monitor.sh
```

Назначение прав:

```bash
chmod +x ~/scripts/server_monitor.sh
```

Запуск:

```bash
./scripts/server_monitor.sh
```

Скрипт собирает:

* uptime
* загрузку CPU
* использование памяти
* использование диска
* статус nginx

---

## Результат

- Развернут Linux сервер в Yandex Cloud  
- Настроены пользователи и доступы  
- Настроен SSH и firewall  
- Установлен и настроен nginx  
- Реализован базовый мониторинг  
