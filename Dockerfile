FROM ubuntu

ADD setup.sh /setup.sh

RUN /setup.sh
VOLUME /home/ubuntu/telegram-bot/data

# Set permission on the auth directory
ADD telegram-cli /home/ubuntu/.telegram-cli
RUN chown -R ubuntu:ubuntu /home/ubuntu/.telegram-cli

# Add the AUTH based scripts to the docker box
ADD plugins/twitter_send.lua /home/ubuntu/telegram-bot/plugins/twitter_send.lua
ADD data/youtube_playlist.py-oauth2.json /home/ubuntu/telegram-bot/scripts/youtube_playlist.py-oauth2.json
run chown -R ubuntu:ubuntu /home/ubuntu/telegram-bot/plugins

USER ubuntu
ENTRYPOINT /home/ubuntu/telegram-bot/launch.sh
