#!/bin/bash

echo "Home directory (using ~): $HOME"
echo "Home directory (using $HOME variable): $(echo "$HOME")"
# path to discord-x.x.xx.tar.gz
file_path="$HOME/Downloads"

# get latest discord update file from file_path
update_file=$(ls -1 -t $file_path | grep discord | head -n1)

echo $update_file

sudo rm -rf /opt/discord &&

sudo tar -xvzf $update_file -C /opt &&

sudo mv /opt/Discord /opt/discord &&

sudo chmod u+x /opt/discord/discord.desktop &&

# to launch from terminal
sudo ln -sf -v /opt/discord/Discord /usr/bin/discord &&

sudo sed -i '/Exec/d;/Icon/d' /opt/discord/discord.desktop &&
sudo bash -c "cat <<< 'Exec=/opt/discord/Discord' >> /opt/discord/discord.desktop" &&
sudo bash -c "cat <<< 'Icon=/opt/discord/discord.png' >> /opt/discord/discord.desktop" &&

# to launch from menu
sudo rm /usr/share/applications/discord.desktop &&
sudo cp -r -v /opt/discord/discord.desktop /usr/share/applications

exit 0
