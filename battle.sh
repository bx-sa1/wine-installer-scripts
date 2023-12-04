#!/bin/bash

set -e

echo "Downloading battle.net"
mkdir ~/.cache/wine-installer/ && cd $_
wget -N -O battlenet.exe "https://downloader.battle.net/download/getInstallerForGame?os=win&gameProgram=BATTLENET_APP&version=Live"

export WINEPREFIX=${WINEPREFIX:-$HOME/.local/share/wine}
export WINEARCH=${WINEARCH:-win64}

WINE=${WINE:-wine}

echo "Installing battle.net"
$WINE battlenet.exe

echo "Success"
