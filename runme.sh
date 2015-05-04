#!/bin/bash

set -e

docker run -v ~/octobot/data:/home/ubuntu/telegram-bot/data -d octobot:latest
