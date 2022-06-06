#!/bin/sh

# LINUX ################################################################################################################

sudo apt-get update -y
sudo apt upgrade -y

# install and activate openssh #
sudo apt -y install openssh-server
sudo systemctl start ssh
sudo systemctl enable ssh

# install packages #
sudo apt -y install net-tools htop git curl nginx
sudo apt -y install gunicorn python3-pip python3-dev python3-venv nodejs build-essential libpq-dev unixodbc-dev postgresql postgresql-contrib
sudo snap -y install --classic certbot
sudo snap -y install gh
sudo usermod -aG bogdan www-data
sudo ufw allow 'Nginx Full'
# sudo adduser bogdan vboxsf  # VBOX Guest

# node js #
sudo curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
nvm list-remote
nvm install node

ip a  # Check ip address

sudo reboot  # Reboot system

# actions with folder and files
mkdir folder_name  # Create folder
cd folder_name # Change directory
move folder_name0/folder_name1 folder_name2 # Move folder folder_name1 from folder_name0 to folder_name2
sudo rm -r folder_name  # Remove folder with files
sudo rm /folder_name/file_name.txt  # Remove file in directory

# github desktop
# https://github.com/shiftkey/desktop/releases

# WINDOWS ##############################################################################################################

rmdir /Q /S folder_name  # remove directory with files
mkdir folder_name  # create folder
chdir static  # change directory

# GIT ##################################################################################################################

git init
git clone https://... project
git add urls.py
git add -A
git commit -a -m"description"
git push
git pull

# PIP ##################################################################################################################

python.exe -m pip install --upgrade pip
pip install env
python -m venv env
source env/Scripts/activate  # call .\env\Scripts\activate.bat
pip install --upgrade pip
python -m pip install --upgrade pip
pip install -r requirements.txt
pip freeze > requirements.txt

# DJANGO ###############################################################################################################

mkdir django_project
cd django_project
python3 -m venv env
source env/bin/activate
pip install --upgrade pip
pip install wheel Django gunicorn psycopg2 pyodbc django-cors-headers djangorestframework Pillow
pip install -r requirements.txt
django-admin startproject backend_settings .
django-admin startapp app_django

python manage.py makemigrations
python manage.py migrate
python manage.py createsuperuser --username bogdan --email bogdandrienko@gmail.com
python manage.py collectstatic --noinput
python manage.py runserver 0.0.0.0:8000  # 0:8000
python manage.py runserver 127.0.0.1:8000  # localhost:8000

# REACT ################################################################################################################

npx -y create-react-app .
npx -y create-react-app . --template redux-typescript
npx -y create-react-app . --template cra-template-pwa-typescript

npm -y install axios react-redux react-router-dom react-bootstrap react-router-bootstrap react-player prettier
npm run start  # start development build on 127.0.0.1:3000
npm run build  # start production build

npm init -y  # initialize npm application

# WEB APP SETTINGS
########################################################################################################################

# DJANGO
###########
nano backend_settings/settings.py
<file>
...
DEBUG = False
ALLOWED_HOSTS = ["*"]
...
</file>
python manage.py makemigrations
python manage.py migrate
python manage.py createsuperuser --username Bogdan --email bogdandrienko@gmail.com
python manage.py runserver 0.0.0.0:8000
gunicorn --bind 0.0.0.0:8000 backend_settings.wsgi

# GUNICORN
###########

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
#############

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
# sudo nginx -t
sudo service nginx start
# sudo systemctl status nginx.service
sudo systemctl reload nginx.service

# HTTP
##############
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

# SSL CERTIFICATE
##########################
sudo certbot certonly --webroot -w /home/bogdan/web -d web.km.kz -m bogdandrienko@gmail.com --agree-tos
sudo openssl dhparam -out /etc/nginx/dhparam.pem 2048

# HTTPS
##############
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
sudo systemctl reload nginx.service

# SSL CERTIFICATE CRON
#########################
sudo systemctl list-timers | grep 'certbot\|ACTIVATES'
sudo nano /etc/letsencrypt/renewal-hooks/deploy/reload-nginx.sh
<file>
#!/bin/bash
/usr/bin/systemctl reload nginx.service
sudo chmod +x /etc/letsencrypt/renewal-hooks/deploy/reload-nginx.sh
sudo certbot renew --dry-run
</file>

########################################################################################################################
