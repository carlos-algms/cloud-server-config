#!/usr/bin/env bash

export SUDO=$(which sudo)

export SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

export PHP_VER=${PHP_VER:="7.4"}

${SCRIPT_DIR}/steps/01-install-dependencies.sh
${SCRIPT_DIR}/steps/02-link-config-files.sh
