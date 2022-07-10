FROM node:14-alpine

# Environment Variables

# Minecraft Server
ENV SERVER_HOST=mc.hypixel.net
ENV SERVER_PORT=25565
# Minecraft Account
ENV MINECRAFT_USERNAME=derek1233alt@gmail.com
ENV MINECRAFT_PASSWORD=BigChungus69!
ENV MINECRAFT_ACCOUNT_TYPE=microsoft
# Discord Account
ENV DISCORD_TOKEN=OTgwNTg3NjkyMjQyOTE5NDQ1.GIxm8J.vGMtP0vkNs0YtKiBuIdJymL0o6IBQyos-pIOI8
# Discord Settings
ENV DISCORD_CHANNEL=980580874091397190
ENV DISCORD_COMMAND_ROLE=995459376104079410
ENV DISCORD_OWNER_ID=253796217820151808
ENV DISCORD_PREFIX=!

# Docker set up instructions

# Setup the working directory
WORKDIR /srv

# Installs our dependencies
COPY package.json /srv/
COPY yarn.lock /srv/
RUN yarn install

# Copy over the source code
COPY src /srv/src/
COPY index.js /srv/

# Start the application
CMD [ "yarn", "start" ]
