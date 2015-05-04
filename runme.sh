#!/bin/bash

set -e

docker run -v ~/dockerfile/telegram-bot/data:/home/ubuntu/telegram-bot/data -d octobot:latest
