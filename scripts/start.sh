#!/bin/bash

# Installing HACS if missing from config folder

if [ ! -d "/config/custom_components/hacs" ]; then

  printf "### HACS plugin not found. Installing latest release from GitHub repo" 
  # Required if moving to balenaos base image
  # install_packages git

  git clone https://github.com/hacs/integration.git
  mv integration/custom_components /config
  rm -rf integration

fi


# Starting HA
python -m homeassistant --config /config
