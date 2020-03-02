#!/usr/bin/env bash

echo "ℹ️ Linking INI files"
ORIGIN="${SCRIPT_DIR}/snippets/conf.d"
FPM_CONF_D="/etc/php/${PHP_VER}/fpm/conf.d"
CLI_CONF_D="/etc/php/${PHP_VER}/cli/conf.d"

ln -sf ${ORIGIN}/* "${FPM_CONF_D}"
ln -sf ${ORIGIN}/* "${CLI_CONF_D}"


POOL_ORIGIN="${SCRIPT_DIR}/snippets/conf.d"
POOL_CONF_D="/etc/php/${PHP_VER}/fpm/pool.d"

ln -sf ${POOL_ORIGIN}/* "${POOL_CONF_D}"
