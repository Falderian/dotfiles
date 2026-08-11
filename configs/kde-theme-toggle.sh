#!/bin/bash

# KDE Plasma dark/light theme toggle
# Toggles between DankMatugenDark and DankMatugenLight color schemes.
# Change the DARK_SCHEME and LIGHT_SCHEME variables to use different schemes.

DARK_SCHEME="BreezeDark"
LIGHT_SCHEME="BreezeLight"

# Read the current color scheme from kdeglobals
CURRENT_SCHEME=$(kreadconfig6 --file kdeglobals --group General --key ColorScheme)

if [ "$CURRENT_SCHEME" = "$DARK_SCHEME" ]; then
    NEW_SCHEME="$LIGHT_SCHEME"
    echo "Switching to light theme: $LIGHT_SCHEME"
else
    NEW_SCHEME="$DARK_SCHEME"
    echo "Switching to dark theme: $DARK_SCHEME"
fi

# Apply the new color scheme
plasma-apply-colorscheme "$NEW_SCHEME"
