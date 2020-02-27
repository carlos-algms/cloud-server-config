#!/usr/bin/env bash

echo "ℹ️ Linking INI files"
FPM_CONF_D="/etc/php/${PHP_VER}/fpm/conf.d"
CLI_CONF_D="/etc/php/${PHP_VER}/cli/conf.d"
ORIGIN="${SCRIPT_DIR}/snippets/conf.d"

ln -sf ${ORIGIN}/* "${FPM_CONF_D}"
ln -sf ${ORIGIN}/* "${CLI_CONF_D}"
