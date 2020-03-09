# balena-homeassistant

This repo contains a simple homeassistant container for Balena Cloud platform.

Guidelines :

1- Create an account on https://www.balena.io/cloud
2- Setup a new balena application and environment variables
3- Flash your raspberrypi3 SD card with a generated image
4- Edit and push this repo to your balena application

Limitations :

1- This repo is tailored for raspberrypi4 (arm64) platform. If you want to use it on any other SBC supported by Belena Cloud, you have to edit Dockerfile.template
2- All services rely on local storage. I plan to add cloud/remote persistent storage for increased reliability

Balena Environment variables requirements:

- Device level
TZ: 'Europe/Luxemburg'
