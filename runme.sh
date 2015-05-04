#!/bin/bash

set -e

docker run -v ~/octobot/data:/home/ubuntu/dockerfile/telegram-bot/data -d octobot:latest
