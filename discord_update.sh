#!/bin/bash

f=$1
echo "$f"

sudo rm -rf /opt/discord

sudo tar -xvzf $1 -C /opt

sudo mv /opt/Discord /opt/discord

sudo chmod u+x /opt/discord/discord.desktop

sudo ln -sf -v /opt/discord/Discord /usr/bin/discord

# to launch from menu
sudo cp -r -v /opt/discord/discord.desktop /usr/share/applications

exit 0
