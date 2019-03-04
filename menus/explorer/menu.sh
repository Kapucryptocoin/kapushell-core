#!/usr/bin/env bash

menu_manage_explorer ()
{
    ascii

    explorer_status

    if [[ "$STATUS_EXPLORER" = "On" ]]; then
        text_white "    K. Stop KAPU Explorer"
        text_white "    R. Restart KAPU Explorer"
    else
        if [[ -d "$EXPLORER_DIR" ]]; then
            text_white "    S. Start KAPU Explorer"
            text_white "    U. Update KAPU Explorer"
            text_white "    P. Uninstall KAPU Explorer"
        else
            text_white "    I. Install KAPU Explorer"
        fi

        divider
    fi

    text_white "    L. Show Log"

    divider

    text_white "    H. Show Help"

    divider

    text_white "    X. Back to Main Menu"

    divider

    menu_manage_explorer_parse_args
}
