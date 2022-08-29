#!/bin/bash

git clone https://github.com/ayoubedd/devContainer
mv devContainer/.devcontainer .
rm -rf devContainer
echo "Done cloning config."