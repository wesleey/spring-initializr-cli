#!/bin/bash

SETTINGS_PATH="settings.sh"
INSTALL_PATH="/usr/local/bin/spring"
SHARE_PATH="/usr/local/share/spring"


if [ -f "$SETTINGS_PATH" ]; then
  source "$SETTINGS_PATH"
elif [ -f "$SHARE_PATH/$SETTINGS_PATH" ]; then
  source "$SHARE_PATH/$SETTINGS_PATH"
else
  echo "Error: $SETTINGS_PATH not found" >&2
  exit 1
fi


echo -e "${Warn} Checking if Spring Initializr CLI is installed..."

if [ ! -f "$INSTALL_PATH" ]; then
  echo -e "${Error} Spring Initializr CLI is not installed."
  exit 1
fi


echo -e "${Info} Uninstalling Spring Initializr CLI..."

sudo rm -f "$INSTALL_PATH"
sudo rm -rf "$SHARE_PATH"

if [ ! -f "$INSTALL_PATH" ]; then
  echo -e "${Success} Spring Initializr CLI has been successfully uninstalled."
else
  echo -e "${Error} Failed to uninstall Spring Initializr CLI. Please check permissions."
  exit 1
fi
