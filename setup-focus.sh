#!/bin/bash

git clone https://github.com/lllyasviel/Fooocus.git fooocus

pushd fooocus
git pull

sudo apt install -y python3.10 python3.10-venv

echo Creating venv...
python -m venv venv

source venv/bin/activate
pip install -r requirements_versions.txt
call deactivate.bat
popd