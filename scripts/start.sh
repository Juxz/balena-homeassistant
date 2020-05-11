#!/bin/bash

# Installing HACS before starting HA
if [ ! -d "/config/custom_components" ]; then
  printf "### Creating custom_components folder"
  mkdir /config/custom_components
fi


if [ ! -d "/config/custom_components/hacs" ]; then
  printf "### HACS plugin not found. Installing latest release from GitHub repo"
  # Required if moving to balenaos base image
  # install_packages git
  git clone https://github.com/hacs/integration.git
  mv integration/custom_components/hacs /config/custom_components/hacs
  rm -rf integration
fi

# if [ ! -d "/config/custom_components/loxone" ]; then
#   printf "### Loxone custom_components not found. Installing latest release from GitHub repo"
#   # Required if moving to balenaos base image
#   # install_packages git
#   git clone https://github.com/JoDehli/PyLoxone.git
#   mv PyLoxone/custom_components/loxone /config/custom_components
#   mv PyLoxone/www /config
#   rm -rf PyLoxone

# fi

# Starting HA
python -m homeassistant --config /config
