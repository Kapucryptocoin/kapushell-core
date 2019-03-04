#!/usr/bin/env bash

menu_manage_explorer_help ()
{
    ascii

    text_yellow "    Install KAPU Explorer (I)"
    text_white "    installs the KAPU blockchain explorer on your server."
    echo

    text_yellow "    Stop KAPU Explorer (K)"
    text_white "    stops the KAPU Explorer process (shown only if the KAPU Explorer process is running)."
    echo

    text_yellow "    Start KAPU Explorer (S)"
    text_white "    starts the KAPU Explorer process (shown only if KAPU Explorer is installed)."
    echo

    text_yellow "    Restart KAPU Explorer (R)"
    text_white "    restarts (stops and then starts) the KAPU Explorer process (shown only if KAPU Explorer is installed and running)."
    echo

    text_yellow "    Update KAPU Explorer (U)"
    text_white "    updates KAPU Explorer if a new version is available (shown only if KAPU Explorer is installed)."
    echo

    text_yellow "    Uninstall KAPU Explorer (P)"
    text_white "    uninstalls KAPU Explorer from your system (shown only if KAPU Explorer is installed)."
    echo

    text_yellow "    Show Log (L)"
    text_white "    shows the PM2 explorer process log."
    echo

    text_yellow "    Show Help (H)"
    text_white "    opens the help file where all this information is available."

    divider

    text_blue "    For more information head over to https://docs.ark.io/"
    echo

    press_to_continue

    menu_main
}
