#!/usr/bin/env bash
export SUDO=$(which sudo)

$SUDO apt update
$SUDO apt install -y software-properties-common
$SUDO add-apt-repository universe
$SUDO add-apt-repository -y ppa:certbot/certbot
$SUDO apt update
$SUDO apt install -y certbot python-certbot-nginx
