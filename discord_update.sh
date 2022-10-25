#!/bin/bash

f=$1

sudo rm -rf /opt/discord

sudo tar -xf ~/Downloads/$f -C /opt/

sudo mv /opt/Discord /opt/discord

sudo chmod u+x /opt/discord/discord.desktop


exit 0
