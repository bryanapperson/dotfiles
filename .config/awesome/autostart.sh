#!/usr/bin/env bash
# ---
# Use "run program" to run it only if it is not already running
# Use "program &" to run it regardless
# ---
# NOTE: This script runs with every restart of AwesomeWM
# If you would like to run a command *once* on login,
# you can use ~/.xprofile

function run {
    if ! pgrep $1 > /dev/null;
    then
        $@&
    fi
}

# TODO Maybe compton can be started from the lua scripting as well.

run compton

# TODO This file may be very temporary. These may be better called from lua
# or just entirely rewritten as native widgets. I can likely use lain widgets.

# Load terminal colorscheme and settings
run xrdb ~/.Xresources

# Network manager tray icon
run nm-applet

# Bluetooth
run blueman-applet

# Pulse audio
run pasystray

# Lockscreen
run light-locker --lock-on-lid
