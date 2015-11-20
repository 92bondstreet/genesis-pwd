#!/bin/bash

## Custom echo
red='\033[0;31m'
yellow='\033[0;33m'
green='\033[0;32m'

## Color-echo.
#  Reset text attributes to normal + without clearing screen.
alias Reset="tput sgr0"
# arg $1 = message
# arg $2 = Color
cecho() {
  echo "${2}${1}"
  Reset # Reset to normal.
  return
}

# Display header
header() {
  cecho "------------------------------------------------------------------------------" $yellow
  cecho "$*" $yellow
  cecho "------------------------------------------------------------------------------" $yellow
}

# Who are you?
if [ "$(id -u)" != "0" ]; then
  cecho "genesis-pwd is for ROOT" $red
  cecho "❯ su" $red
  exit 1
fi

cd ~

header "Install pwd.sh"

aptitude -y install gnupg
git clone https://github.com/drduh/pwd.sh
mv pwd.sh /usr/local/bin

cecho "pwd.sh done" $green

header "Shortcuts"

wget --no-check-certificate https://raw.githubusercontent.com/92bondstreet/genesis-pwd/master/illuminati
chmod +x illuminati
mv illuminati /usr/local/bin
wget --no-check-certificate https://raw.githubusercontent.com/92bondstreet/genesis-pwd/master/secret
chmod +x secret
mv secret /usr/local/bin

cecho "illuminati, secret done" $green
