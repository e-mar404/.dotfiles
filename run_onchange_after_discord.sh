#! /usr/bin/env bash

# delete old discord stuff
sudo rm -rf /opt/Discord
sudo rm /usr/share/discord/Discord
sudo rm /usr/share/applications/discord.desktop
sudo rm /usr/share/icons/hicolor/256x256/apps/discord.png

curl -O "https://stable.dl2.discordapp.net/apps/linux/0.0.132/discord-0.0.132.tar.gz"

sudo tar -zxvf "discord-0.0.132.tar.gz" -C /opt

sudo mkdir -p /usr/share/discord
sudo ln -sfv /opt/Discord/Discord /usr/share/discord/Discord

sudo cp -rv /opt/Discord/discord.desktop /usr/share/applications
sudo cp -v /opt/Discord/discord.png /usr/share/icons/hicolor/256x256/apps/discord.png

rm -rf *.tar.gz
