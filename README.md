# Drupal fig/docker environment

This project is designed to allow a developer to quickly get a Drupal environment setup for both local development and production on a single server.

The project uses the [fig](http://orchardup.github.io/fig/) to orchestrate docker containers so that Drupal works with PHP-FPM/nginx and MySQL database backend.

## Prerequisites

- [Docker](http://docs.docker.com/installation/#installation)
- [Fig](http://orchardup.github.io/fig/install.html)

## Quick Start

Use `git clone --recursive` to download the project because of the Drupal submodule.

Use `fig up -d` build and start the project. (If you modify anything in the containers folder, then you should run `fig build`)

The Drupal website should be available at (http://localhost/)  You'll want to go to (http://localhost/install.php) for the time loading the site.

## Running and stoping containers

If you want to top the containers then run `fig stop`.  If you want to start it up again, use `fig up -d`.

## Developing

This repository is intended for Drupal site building by add modules, themes and libraries to the respective directories.  However, Drupal core could also be modified by replacing the drupal submodule with our own Drupal core.

### Drush and the command line

Two scripts have can be used to use Drush (or other command line tools) in the PHP container.

The `drush` script can be used to run single drush commands on the PHP container.  This should only be used for simple commands such as `drush status` because the script has know bugs when using " characters.

The `explore` script runs bash on the PHP container so that `drush` and a number of other useful commands can be run such as `mysql`.
