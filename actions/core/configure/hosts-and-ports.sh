#!/usr/bin/env bash

core_configure_hosts_and_ports ()
{
    local envFile="${CORE_DATA}/.env"

    . "$envFile"

    # @arkecosystem/core-p2p
    read -p "Would you like to configure the P2P API? [y/N] : " choice

    if [[ "$choice" =~ ^(yes|y|Y) ]]; then
        read -p "Enter the P2P API host, or press ENTER for the default [${KAPU_P2P_HOST}]: " inputHost
        read -p "Enter the P2P API port, or press ENTER for the default [${KAPU_P2P_PORT}]: " inputPort

        if [[ ! -z "$inputHost" ]]; then
            sed -i -e "s/KAPU_P2P_HOST=$KAPU_P2P_HOST/KAPU_P2P_HOST=$inputHost/g" "$envFile"
        fi

        if [[ ! -z "$inputPort" ]]; then
            sed -i -e "s/KAPU_P2P_PORT=$KAPU_P2P_PORT/KAPU_P2P_PORT=$inputPort/g" "$envFile"
        fi
    fi

    # @arkecosystem/core-api
    read -p "Would you like to configure the Public API? [y/N] : " choice

    if [[ "$choice" =~ ^(yes|y|Y) ]]; then
        read -p "Enter the Public API host, or press ENTER for the default [${KAPU_API_HOST}]: " inputHost
        read -p "Enter the Public API port, or press ENTER for the default [${KAPU_API_PORT}]: " inputPort

        if [[ ! -z "$inputHost" ]]; then
            sed -i -e "s/KAPU_API_HOST=$KAPU_API_HOST/KAPU_API_HOST=$inputHost/g" "$envFile"
        fi

        if [[ ! -z "$inputPort" ]]; then
            sed -i -e "s/KAPU_API_PORT=$KAPU_API_PORT/KAPU_API_PORT=$inputPort/g" "$envFile"
        fi
    fi

    # @arkecosystem/core-webhooks
    read -p "Would you like to configure the Webhooks API? [y/N] : " choice

    if [[ "$choice" =~ ^(yes|y|Y) ]]; then
        read -p "Enter the Webhooks API host, or press ENTER for the default [${KAPU_WEBHOOKS_HOST}]: " inputHost
        read -p "Enter the Webhooks API port, or press ENTER for the default [${KAPU_WEBHOOKS_PORT}]: " inputPort

        if [[ ! -z "$inputHost" ]]; then
            sed -i -e "s/KAPU_WEBHOOKS_HOST=$KAPU_WEBHOOKS_HOST/KAPU_WEBHOOKS_HOST=$inputHost/g" "$envFile"
        fi

        if [[ ! -z "$inputPort" ]]; then
            sed -i -e "s/KAPU_WEBHOOKS_PORT=$KAPU_WEBHOOKS_PORT/KAPU_WEBHOOKS_PORT=$inputPort/g" "$envFile"
        fi
    fi

    # @arkecosystem/core-graphql
    read -p "Would you like to configure the GraphQL API? [y/N] : " choice

    if [[ "$choice" =~ ^(yes|y|Y) ]]; then
        read -p "Enter the GraphQL API host, or press ENTER for the default [${KAPU_GRAPHQL_HOST}]: " inputHost
        read -p "Enter the GraphQL API port, or press ENTER for the default [${KAPU_GRAPHQL_PORT}]: " inputPort

        if [[ ! -z "$inputHost" ]]; then
            sed -i -e "s/KAPU_GRAPHQL_HOST=$KAPU_GRAPHQL_HOST/KAPU_GRAPHQL_HOST=$inputHost/g" "$envFile"
        fi

        if [[ ! -z "$inputPort" ]]; then
            sed -i -e "s/KAPU_GRAPHQL_PORT=$KAPU_GRAPHQL_PORT/KAPU_GRAPHQL_PORT=$inputPort/g" "$envFile"
        fi
    fi

    # @arkecosystem/core-json-rpc
    read -p "Would you like to configure the JSON-RPC API? [y/N] : " choice

    if [[ "$choice" =~ ^(yes|y|Y) ]]; then
        read -p "Enter the JSON-RPC host, or press ENTER for the default [${KAPU_JSONRPC_HOST}]: " inputHost
        read -p "Enter the JSON-RPC port, or press ENTER for the default [${KAPU_JSONRPC_PORT}]: " inputPort

        if [[ ! -z "$inputHost" ]]; then
            sed -i -e "s/KAPU_JSONRPC_HOST=$KAPU_JSONRPC_HOST/KAPU_JSONRPC_HOST=$inputHost/g" "$envFile"
        fi

        if [[ ! -z "$inputPort" ]]; then
            sed -i -e "s/KAPU_JSONRPC_PORT=$KAPU_JSONRPC_PORT/KAPU_JSONRPC_PORT=$inputPort/g" "$envFile"
        fi
    fi

    # @arkecosystem/core-*
    read -p "Would you like to configure redis? [y/N] : " choice

    if [[ "$choice" =~ ^(yes|y|Y) ]]; then
        read -p "Enter the Redis host, or press ENTER for the default [${KAPU_REDIS_HOST}]: " inputHost
        read -p "Enter the Redis port, or press ENTER for the default [${KAPU_REDIS_PORT}]: " inputPort

        if [[ ! -z "$inputHost" ]]; then
            sed -i -e "s/KAPU_REDIS_HOST=$KAPU_REDIS_HOST/KAPU_REDIS_HOST=$inputHost/g" "$envFile"
        fi

        if [[ ! -z "$inputPort" ]]; then
            sed -i -e "s/KAPU_REDIS_PORT=$KAPU_REDIS_PORT/KAPU_REDIS_PORT=$inputPort/g" "$envFile"
        fi
    fi
}
