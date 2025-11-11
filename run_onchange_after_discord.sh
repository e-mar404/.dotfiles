#! /usr/bin/env bash

# delete old discord stuff
sudo rm -rf /opt/Discord
sudo rm /usr/bin/Discord
sudo rm /usr/share/applications/discord.desktop

curl -O "https://stable.dl2.discordapp.net/apps/linux/0.0.113/discord-0.0.113.tar.gz"

sudo tar -zxvf "discord-0.0.113.tar.gz" -C /opt

sudo ln -sf -v /opt/Discord/Discord /usr/bin/Discord

sudo cp -r -v /opt/Discord/discord.desktop /usr/share/applications

rm -rf *.tar.gz
