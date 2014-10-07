# Base container for other containers that run off the Drupal 7 source code.
FROM base/archlinux
MAINTAINER David Parrish <daveparrish@gmail.com>

RUN pacman -Syuq --noconfirm

ADD drupal /srv/http/drupal
ADD modules /srv/http/drupal/sites/all/modules
ADD themes /srv/http/drupal/sites/all/themes
ADD libraries /srv/http/drupal/sites/all/libraries

# Add settings file
ADD settings.php /srv/http/drupal/sites/default/settings.php
