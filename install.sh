#!/bin/bash

if [ -d ".devcontainer" ]
then
    echo ".devcontainer directory already exits"
    exit 1
fi

echo "Clonning the config repository"
git clone https://github.com/ayoubedd/devContainer 1>/dev/null 2>/dev/null

sleep 1
echo "installing the config"
mv devContainer/.devcontainer .

sleep 1
echo "Cleanning up"
rm -rf devContainer

sleep 1
echo "Done installing config."