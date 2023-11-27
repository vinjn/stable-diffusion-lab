#!/bin/bash

pushd stable-diffusion-webui

export COMMANDLINE_ARGS="--api --xformers --skip-version-check --no-hashing --skip-python-version-check --skip-torch-cuda-test --api-log"

./webui.sh

# %~dp0\stable-diffusion-webui\venv\Scripts\Python.exe  launch.py 