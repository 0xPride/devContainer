#!/bin/bash

if [ -d ".devcontainer" ]
then
    echo ".devcontainer directory already exits"
    exit 1
fi

echo "Clonning the config repository"
echo "\t" git clone https://github.com/ayoubedd/devContainer
git clone https://github.com/ayoubedd/devContainer 1>/dev/null 2>/dev/null

sleep 1
echo "Installing the config"
echo "\t" mv devContainer/.devcontainer
mv devContainer/.devcontainer .

sleep 1
echo "Cleanning up"
echo "\t" rm -rf devContainer
rm -rf devContainer

sleep 1
echo "Done installing config."