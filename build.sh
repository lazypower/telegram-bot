#!/bin/bash

cd /home/ubuntu/dockerfile/telegram-bot
git pull origin master

/home/ubuntu/hooked/build-hook.py -r ~/dockerfile/telegram-bot -t octobot -s ~/dockerfile/telegram-bot/runme.sh -v &
