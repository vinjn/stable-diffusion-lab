#!/bin/bash

bash ./setup-1111-shared.bat

# install python3.10
sudo apt install -y software-properties-common
sudo add-apt-repository -y ppa:deadsnakes/ppa
sudo apt install -y python3.10 python3.10-venv

pushd stable-diffusion-webui

export COMMANDLINE_ARGS="--xformers --reinstall-xformers"
# pip3 install viztracer
python3.10 -m venv venv
# source venv/bin/activate
./webui.sh
popd
