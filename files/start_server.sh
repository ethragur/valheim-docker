#!/usr/bin/env bash

cd "/home/steam/Steam/steamapps/common/Valheim dedicated server"

export templdpath=$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=./linux64:$LD_LIBRARY_PATH
export SteamAppId=892970

# Tip: Make a local copy of this script to avoid it being overwritten by steam.
# NOTE: Minimum password length is 5 characters & Password cant be in the server name.
# NOTE: You need to make sure the ports 2456-2458 is being forwarded to your server through your local router & firewall.
./valheim_server.x86_64 -name "$VALHEIMSERVER" -port 2456 -world "$VALHEIMWORLD" -password "$VALHEIMPASS" -public $VALHEIMPUBLIC

export LD_LIBRARY_PATH=$templdpath

echo 1 > server_exit.drp
echo "Server exit signal set"
echo "You can now close this terminal"

