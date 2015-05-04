#!/bin/bash

set -e

docker run -v ~/dockerfile/telegram-bot/data:/home/ubuntu/telegram-bot/data -d --restart=on-failure:10 octobot:latest
