#!/bin/bash

SOURCE_PATH="spring.sh"
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


echo -e "${Warn} Checking if ${SOURCE_PATH} exists in the current directory..."

if [ ! -f "$SOURCE_PATH" ]; then
  echo -e "${Error} ${SOURCE_PATH} not found in the current directory."
  exit 1
fi


echo -e "${Info} Installing Spring Initializr CLI..."

sudo mkdir -p "$SHARE_PATH"
sudo cp VERSION "$SETTINGS_PATH" "$SHARE_PATH"

sudo cp "$SOURCE_PATH" "$INSTALL_PATH"
sudo chmod +x "$INSTALL_PATH"


if [ -f "$INSTALL_PATH" ] && [ -x "$INSTALL_PATH" ]; then
  echo -e "${Success} Spring Initializr CLI installed successfully."
  echo -e "${Info} You can now run it using the command: ${BYellow}spring${Color_Off}"
else
  echo -e "${Error} Failed to install Spring Initializr CLI. Please check permissions."
  exit 1
fi
