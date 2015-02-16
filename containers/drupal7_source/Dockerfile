# Base container for other containers that run off the Drupal 7 source code.
FROM base/archlinux
MAINTAINER David Parrish <daveparrish@gmail.com>

# Update mirrors and all packages
ADD mirrorlist /etc/pacman.d/mirrorlist.new
RUN rankmirrors -n 6 /etc/pacman.d/mirrorlist.new > /etc/pacman.d/mirrorlist \
&& pacman -Syuq --noconfirm && pacman-db-upgrade

ADD drupal /srv/http/drupal
ADD modules /srv/http/drupal/sites/all/modules
ADD themes /srv/http/drupal/sites/all/themes
ADD libraries /srv/http/drupal/sites/all/libraries

# Add settings file
ADD settings.php /srv/http/drupal/sites/default/settings.php
