#!/usr/bin/env bash
export SUDO=$(which sudo)

export SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "ℹ️ Installing Nginx"
${SUDO} apt update
${SUDO} apt install -y nginx

echo "ℹ️ Linking Nginx config files"
TARGET_CONF_D="/etc/nginx/conf.d"
TARGET_SNIPPETS="/etc/nginx/snippets"
ORIGIN_CONF="${SCRIPT_DIR}/conf.d"
ORIGIN_SNIPPETS="${SCRIPT_DIR}/snippets"

ln -sf ${ORIGIN_CONF}/* "${TARGET_CONF_D}"
ln -sf ${ORIGIN_SNIPPETS}/* "${TARGET_SNIPPETS}"

echo "✅ Finished Nginx"
