#!/bin/bash

pushd stable-diffusion-webui

export COMMANDLINE_ARGS="--api --opt-sdp-no-mem-attention --skip-version-check --no-hashing --skip-python-version-check --skip-torch-cuda-test --api-log"

./webui.sh

# %~dp0\stable-diffusion-webui\venv\Scripts\Python.exe  launch.py 