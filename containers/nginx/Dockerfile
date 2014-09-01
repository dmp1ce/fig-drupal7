FROM base/archlinux
MAINTAINER David Parrish <daveparrish@gmail.com>

RUN pacman -Syq --noconfirm nginx

ADD nginx.conf /etc/nginx/nginx.conf
ADD start_nginx.sh /start_nginx.sh
