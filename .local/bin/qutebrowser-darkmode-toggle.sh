#!/bin/bash
# Script for darkman to toggle qutebrowser dark mode

case "$1" in
    dark|light)
        # Use qutebrowser's spawn command to execute the userscript
        qutebrowser ":spawn --userscript darkmode-toggle $1" 2>/dev/null &
        # Small delay to ensure the command is processed
        sleep 0.5
        echo "Sent $1 mode command to qutebrowser"
        ;;
    *)
        echo "Usage: $0 {dark|light}"
        exit 1
        ;;
esac
