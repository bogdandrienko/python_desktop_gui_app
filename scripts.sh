#!/bin/sh

################### LINUX SHELL ##############################################################################################



################### WINDOWS CMD ##############################################################################################

rmdir /Q /S static
rmdir /Q /S react\production\static
rmdir /Q /S react\test\static
mkdir static

################### GIT ################################################################################################

git init
git clone https://... project
git add urls.py
git add -A
git commit -a -m"description"
git push
git pull

################### PIP ################################################################################################

python.exe -m pip install --upgrade pip
pip install env
python -m venv env
call .\env\Scripts\activate.bat
pip install --upgrade pip
python -m pip install --upgrade pip
pip install -r requirements.txt
pip freeze > requirements.txt

################### DJANGO #############################################################################################

pip install django django-cors-headers Pillow lxml djangorestframework
mkdir django_project
chdir django_project
django-admin startproject backend_settings .
django-admin startapp app_django

# set /p app_name= "Please enter the 'app_name':  "
# IF "%app_name%"=="" (set app_name="app_name")
# django-admin startapp %app_name%

python manage.py makemigrations
python manage.py migrate
python manage.py createsuperuser --username bogdan --email bogdandrienko@gmail.com
python manage.py collectstatic --noinput
python manage.py runserver 0.0.0.0:8000
python manage.py runserver 0:8000
python manage.py runserver 127.0.0.1:8000
python manage.py runserver localhost:8000


################### REACT ##############################################################################################

cd ..\
mkdir frontend
cd frontend
npm install axios react-redux react-router-dom react-bootstrap react-router-bootstrap react-player prettier
npx -y create-react-app . --template pwa-typescript
npx -y create-react-app . --template cra-template-pwa
npx -y create-react-app . --template cra-template-pwa-typescript
npx -y create-react-app . --template redux-typescript
npx -y create-react-app .
npm run start

################### LINUX ##############################################################################################


.......................................................................................................................
DEVELOP:

Установить IDE: Visual Studio Code(https://code.visualstudio.com/), зарегистрироваться и подключить все расширения
Установить Python (https://www.python.org/) и все настройки при установке в директорию C:\Projects\Python\Python- "версия_пайтона"
Установить Pip installer(https://pypi.org/), если не был установлен при предыдущих установках.
Установить Nodejs (https://nodejs.org/)

Установить PostgreSQL(https://www.postgresql.org/) и все настройки и пароль при установке в директорию C:\Project\Envire\PostgreSQL- "версия_postgre"
.......................................................................................................................

.......................................................................................................................
PREVIEW:

'www.pythonanywhere.com' - сайт
Зайти в панель управления
'Recent Files' - Добавлять / изменять / заменять файлы и настройки вручную через
'Recent Consoles' - после изменения в файлах, сделать терминала, от главного пути папки проекта, 'python manage.py makemigrations'->'python manage.py migrate'
'All Web Apps' - зайти в настройки веб-приложения, перезагрузить приложение и дату его активации
.......................................................................................................................

.......................................................................................................................
linux:

Установить последнюю LTS версию ubunta и её обновления
Установить Chromium и активировать аккаунт гугл
Установить тимвивер / anydesk / radmin / etc
'wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb' - скачивание тимвивера
'sudo apt install ./teamviewer_amd64.deb' - установка тимвивера

'htop' - команда для проверки нагрузки на линукс убунта



'sudo apt-get update -y' - Получить обновления
'sudo apt upgrade -y' - Установить обновления
'sudo apt install git -y' - Установить гит
'git clone https://github.com/bogdandrienko/web-app.git' - Клонировать репозиторий с проектом, ввести имя пользователя "bogdandrienko" и пароль "3*2*4*o*d*n"
'sudo apt install python3-pip -y' - Установить пакетный менеджер pip
'sudo apt-get install python3-venv -y' - Установить дополнение для создания виртуального окружения
'python3 -m venv lin_env' - Создать виртуальное окружение
'source lin_env/bin/activate' - Активировать виртуальное окружение
'pip install --upgrade pip' - Обновить pip
'pip install -r requirements_lin.txt' - Установить все компоненты и дополнения из файла "requirements_lin.txt"
'pip install django Pillow' - Ручная установка компонентов самых свежих.
'python manage.py runserver 192.168.1.62:8000' - запуск сервера на локальной сети "192.168.1.62:8000"

Дополнения:
asgiref==3.3.1
Django==3.1.5
djangorestframework==3.12.2
Pillow==8.1.0
pkg-resources==0.0.0
pytz==2020.5
sqlparse==0.4.1

Не нужно:
/.DOCS
/.node_modules
/.win_env
/..babelrc
/..jshintrc
/.package.json
/.package-lock.json
/.requirements_win.txt
/.webpack.config.js
.......................................................................................................................

.......................................................................................................................
Django:

'pip install env' - Установить Расширение pip 'env'(виртуальное окружение)
'mkdir project_name' - создать папку проекта
'chdir project_name' - изменить путь на папку проекта
'python -m venv win_env' - Создать виртуальное окружение, в текущей директории
'call .\win_env\Scripts\activate.bat' - Активировать виртуальное окружение проекта
'pip install --upgrade pip' - Обновить pip
'pip install django' - Установить Django

pip install django-grappelli django-crispy-forms
pip install requests


.......................................................................................................................

.......................................................................................................................
React:

'call .\env_name\Scripts\activate.bat' - Активировать виртуальное окружение проекта
'npm init -y' - Создать node.js приложение

'npm install webpack webpack-cli @babel/core @babel/preset-env @babel/preset-react babel-loader babel-plugin-transform-class-properties --save-dev' - Установить дополнения, как зависимость "разработки"
'npm install react react-dom react-redux redux redux-devtools-extension redux-thunk prop-types axios --save' - Установить дополнения, как зависимость "локальную"
.......................................................................................................................

..................................
Heroku

heroku config:set DISABLE_COLLECTSTATIC=1 --app kostanay-minerals
...........................

.......................................................................................................................
СКРИПТЫ:

'windows_ENVIRE' - активация и вызов окна консоли из под виртуального окружения env, из под него надо запускать django и устанавливать пакеты pip / npm
'windows_RUN' - запуск сервера django на localhost, заранее активируется виртуальное окружение
'windows_MIGRATES' - создание и применение миграций всего проекта
'windows_CREATE' - создание чистого проекта

КОМАНДЫ:

'django' ->	'django-admin startproject _project_name_' - создание проекта, с названием _project_name_
                'django-admin startapp _app_name_' - создание приложения, с названием _app_name_

		'python manage.py createsuperuser' - создать суперпользователя
		'python manage.py makemigrations' - создание миграций всего проекта
                'python manage.py makemigrations _app_name_' - создание миграции приложения _app_name_
                'python manage.py migrate' - применение миграций всего проекта
               	'python manage.py migrate _app_name_' - применение миграции приложения _app_name_
		'python manage.py runserver' - запуск сервера
		'python manage.py collectstatic' - собрать все статические файлы в директорию

		'uvicorn django_project.asgi:application --port 8000 --no-access-log'


'pip' ->	'python -m venv env_name' - создание виртуального окружения, с названием env_name
            	'pip install --upgrade pip' - обновление pip
		'pip install package_name' - установка пакета(ов)
            	'pip install -r requirements.txt' - установка пакетов из файла requirements.txt
            	'pip freeze > requirements.txt' - сохранение установленных пакетов в файл requirements.txt

		'pip help' - помощь по доступным командам
		'pip -V' - узнать версию установленного pip
		'pip uninstall package_name' - удаление пакета(ов)
		'pip list' - список установленных пакетов
		'pip show package_name' - показывает информацию об установленном пакете
		'pip search' - поиск пакетов по имени
		'pip --proxy user:passwd@proxy.server:port' - использование с прокси
		'pip install -U' - обновление пакета(ов)
		'pip install --force-reinstall' - при обновлении, переустановить пакет, даже если он последней версии


'npm' ->	'npm init -y' - инициализация приложения node.js и создание файлов настроек приложения
                'npm install' - установка пакетов из package.json
                'npm install _package_name_' - установка пакетов
                'npm run dev' - запуск dev скрипта npm
                'npm run build' - запуск build скрипта npm

		'node -h' - список всех команд доступных в Node.js
		'node -v' - узнать версию установленного Node.js
.......................................................................................................................







# ubuntu (22.04)
########################################################################################################################
sudo apt-get update -y
sudo apt upgrade -y
###########
sudo apt -y install openssh-server
sudo systemctl start ssh
sudo systemctl enable ssh
ip a
sudo adduser bogdan vboxsf
###########
sudo apt -y install net-tools htop git curl nginx
sudo apt -y install gunicorn python3-pip python3-dev python3-venv build-essential libpq-dev unixodbc-dev postgresql postgresql-contrib
sudo apt -y install nodejsp
sudo snap install --classic certbot
sudo snap install gh
sudo usermod -aG bogdan www-data

# node js
sudo curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
nvm list-remote
nvm install node

sudo reboot
###########
# sudo rm /etc/nginx/sites-enabled/web-km-kz-http.conf # Удалить файл в папке
# rmdir /Q /S react
# mkdir react
# cd react
# move frontend/build react

# DJANGO PROJECT
########################################################################################################################

cd ~
mkdir web
cd web
python3 -m venv env
source env/bin/activate
pip install --upgrade pip
pip install wheel
pip install Django gunicorn psycopg2 pyodbc django-cors-headers Pillow
pip install -r requirements.txt
django-admin startproject backend_settings .

# DJANGO SETTINGS
########################################################################################################################

nano backend_settings/settings.py
<file>
...
DEBUG = False
ALLOWED_HOSTS = ["*"]
...
</file>
#python manage.py check --database default
python manage.py makemigrations
python manage.py migrate
python manage.py createsuperuser --username Bogdan --email bogdandrienko@gmail.com
python manage.py collectstatic
# python manage.py runserver 127.0.0.1:8000
# python manage.py runserver 0.0.0.0:8000
# python manage.py runserver 0.0.0.0:443
# gunicorn --bind 0.0.0.0:8000 backend_settings.wsgi

# GUNICORN
########################################################################################################################

sudo nano /etc/systemd/system/gunicorn.socket
<file>
[Unit]
Description=gunicorn socket

[Socket]
ListenStream=/run/gunicorn.sock

[Install]
WantedBy=sockets.target
</file>


sudo nano /etc/systemd/system/gunicorn.service
<file>
[Unit]
Description=Gunicorn for the Django example project
Requires=gunicorn.socket
After=network.target

[Service]
Type=notify

User=bogdan
Group=www-data

RuntimeDirectory=gunicorn
WorkingDirectory=/home/bogdan/web
ExecStart=/home/bogdan/web/env/bin/gunicorn --workers 9 --bind unix:/run/gunicorn.sock backend.wsgi:application
ExecReload=/bin/kill -s HUP $MAINPID
KillMode=mixed
TimeoutStopSec=5
PrivateTmp=true

[Install]
WantedBy=multi-user.target
</file>
sudo systemctl daemon-reload
sudo systemctl start gunicorn
sudo systemctl enable --now gunicorn.service
sudo systemctl daemon-reload
sudo systemctl restart gunicorn
# sudo systemctl status gunicorn.service
# sudo systemctl disable gunicorn
# sudo systemctl stop gunicorn

# NGINX
########################################################################################################################

# for web.km.kz:80 => 192.168.1.157:80 # Http
# for web.km.kz:443 => 192.168.1.157:443 # Https

# for web.km.kz:88 => 192.168.1.111:88 # Test
# for web.km.kz:8000 => 192.168.1.68:8000 # Development

sudo nano /etc/nginx/sites-available/web-km-kz-http.conf
<file>
server {
listen 80;
listen [::]:80;

server_name web.km.kz www.web.km.kz;

root /home/bogdan/web;

location /.well-known/acme-challenge/ {}

location /favicon.ico {
    alias /home/bogdan/web/static/logo.png;

    access_log off; log_not_found off;

    expires max;
}

location /robots.txt {
    alias /home/bogdan/web/static/robots.txt;

    access_log off; log_not_found off;

    expires max;
}

location /static/ {
    alias /home/bogdan/web/static/;

    expires max;
}

location /media/ {
    alias /home/bogdan/web/static/media/;

    expires max;
}

location / {
#    include proxy_params;
    proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
    proxy_set_header X-Forwarded-Proto $scheme;
    proxy_set_header Host $http_host;
    proxy_redirect off;
    proxy_buffering off;
    proxy_pass http://unix:/run/gunicorn.sock;
}
}
</file>


sudo ln -s /etc/nginx/sites-available/web-km-kz-http.conf /etc/nginx/sites-enabled/web-km-kz-http.conf
sudo service nginx start
# sudo systemctl status nginx.service
# sudo ufw allow 443
# sudo ufw allow 8000
sudo ufw allow 'Nginx Full'
sudo systemctl reload nginx.service
# sudo nginx -t

########################################################################################################################

sudo mv /etc/nginx/sites-available/web-km-kz-http.conf /etc/nginx/sites-available/web.km.kz-https.conf

sudo nano /etc/nginx/sites-available/web-km-kz-http.conf
<file>
server {
listen 80;
listen [::]:80;

server_name web.km.kz www.web.km.kz;

root /home/bogdan/web;

location /.well-known/acme-challenge/ {}

location / {
    return 301 https://$server_name$request_uri;
}
}
</file>

sudo certbot certonly --webroot -w /home/bogdan/web -d web.km.kz -m bogdandrienko@gmail.com --agree-tos
sudo openssl dhparam -out /etc/nginx/dhparam.pem 2048

sudo nano /etc/nginx/sites-available/web-km-kz-https.conf
<file>
server {
listen 443 ssl http2;
listen [::]:443 ssl http2;

ssl_certificate /etc/letsencrypt/live/web.km.kz/fullchain.pem;
ssl_certificate_key /etc/letsencrypt/live/web.km.kz/privkey.pem;

ssl_session_timeout 1d;
ssl_session_cache shared:MozSSL:10m;

ssl_dhparam /etc/nginx/dhparam.pem;

ssl_protocols TLSv1.2;
ssl_ciphers ECDHE-ECDSA-AES128-GCM-SHA256:ECDHE-RSA-AES128-GCM-SHA256:ECDHE-ECDSA-AES256-GCM-SHA384:ECDHE-RSA-AES256-GCM-SHA384:ECDHE-ECDSA-CHACHA20-POLY1305:ECDHE-RSA-CHACHA20-POLY1305:DHE-RSA-AES128-GCM-SHA256:DHE-RSA-AES256-GCM-SHA384;
ssl_prefer_server_ciphers off;

ssl_stapling on;
ssl_stapling_verify on;

ssl_trusted_certificate /etc/letsencrypt/live/web.km.kz/chain.pem;

resolver 1.1.1.1;

client_max_body_size 30M;

server_name web.km.kz www.web.km.kz;

root /home/bogdan/web;

location /.well-known/acme-challenge/ {}

location /favicon.ico {
    alias /home/bogdan/web/static/logo.png;

    access_log off; log_not_found off;

    expires max;
}

location /robots.txt {
    alias /home/bogdan/web/static/robots.txt;

    access_log off; log_not_found off;

    expires max;
}

location /static/ {
    alias /home/bogdan/web/static/;

    expires max;
}

location /media/ {
    alias /home/bogdan/web/static/media/;

    expires max;
}

location / {
#    include proxy_params;
    proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
    proxy_set_header X-Forwarded-Proto $scheme;
    proxy_set_header Host $http_host;
    proxy_redirect off;
    proxy_buffering off;
    proxy_pass http://unix:/run/gunicorn.sock;
}
}
</file>

sudo ln -s /etc/nginx/sites-available/web-km-kz-https.conf /etc/nginx/sites-enabled/web-km-kz-https.conf
sudo service nginx start
# sudo systemctl status nginx.service
# sudo ufw allow 443
# sudo ufw allow 8000
sudo ufw allow 'Nginx Full'
sudo systemctl reload nginx.service
# sudo nginx -t

########################################################################################################################

sudo systemctl list-timers | grep 'certbot\|ACTIVATES'
sudo nano /etc/letsencrypt/renewal-hooks/deploy/reload-nginx.sh
<file>
#!/bin/bash
/usr/bin/systemctl reload nginx.service
sudo chmod +x /etc/letsencrypt/renewal-hooks/deploy/reload-nginx.sh
sudo certbot renew --dry-run
</file>

########################################################################################################################
