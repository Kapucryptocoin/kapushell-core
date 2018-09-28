#!/usr/bin/env bash

core_configure_database ()
{
    local envFile="${CORE_DATA}/.env"

    . "$envFile"

    read -p "Enter the database host, or press ENTER for the default [$KAPU_DB_HOST]: " inputHost
    read -p "Enter the database port, or press ENTER for the default [$KAPU_DB_PORT]: " inputPort
    read -p "Enter the database username, or press ENTER for the default [$KAPU_DB_USERNAME]: " inputUsername
    read -p "Enter the database password, or press ENTER for the default [$KAPU_DB_PASSWORD]: " inputPassword
    read -p "Enter the database name, or press ENTER for the default [ark_${CORE_NETWORK}]: " inputDatabase

    if [[ ! -z "$inputHost" ]]; then
        sed -i -e "s/KAPU_DB_HOST=$KAPU_DB_HOST/KAPU_DB_HOST=$inputHost/g" "$envFile"
    fi

    if [[ ! -z "$inputPort" ]]; then
        sed -i -e "s/KAPU_DB_PORT=$KAPU_DB_PORT/KAPU_DB_PORT=$inputPort/g" "$envFile"
    fi

    if [[ ! -z "$inputUsername" ]]; then
        sed -i -e "s/KAPU_DB_USERNAME=$KAPU_DB_USERNAME/KAPU_DB_USERNAME=$inputUsername/g" "$envFile"
    fi

    if [[ ! -z "$inputPassword" ]]; then
        sed -i -e "s/KAPU_DB_PASSWORD=$KAPU_DB_PASSWORD/KAPU_DB_PASSWORD=$inputPassword/g" "$envFile"
    fi

    if [[ ! -z "$inputDatabase" ]]; then
        sed -i -e "s/KAPU_DB_DATABASE=$KAPU_DB_DATABASE/KAPU_DB_DATABASE=$inputDatabase/g" "$envFile"
    fi

    . "$envFile"
}
