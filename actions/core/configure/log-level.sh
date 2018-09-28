#!/usr/bin/env bash

core_configure_log_level ()
{
    local envFile="${CORE_DATA}/.env"

    . "$envFile"

    read -p "Enter the log level, or press ENTER for the default [$KAPU_LOG_LEVEL]: " inputLevel

    if [[ ! -z "$inputLevel" ]]; then
        sed -i -e "s/KAPU_LOG_LEVEL=$KAPU_LOG_LEVEL/KAPU_LOG_LEVEL=$inputLevel/g" "$envFile"
    fi

    . "$envFile"
}
