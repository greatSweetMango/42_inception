#!/bin/bash

data_directory="${HOME}/data"
mariadb_directory="${HOME}/data/mariadb"
wordpress_directory="${HOME}/data/wordpress"

if [ ! -d "$data_directory" ]; then
    mkdir -p "$data_directory"
fi

if [ ! -d "$mariadb_directory" ]; then
    mkdir -p "$mariadb_directory"
fi

if [ ! -d "$wordpress_directory" ]; then
    mkdir -p "$wordpress_directory"
fi