#!/usr/bin/env bash

export SUDO=$(which sudo)

$SUDO apt update
$SUDO apt install -y mysql-client mysql-server
$SUDO mysql_secure_installation
