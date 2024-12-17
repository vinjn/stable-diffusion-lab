pushd stable-diffusion-webui

@echo off

set PYTHON=
set GIT=
set VENV_DIR=
@REM set COMMANDLINE_ARGS=--api
set COMMANDLINE_ARGS=--api --xformers --skip-version-check --no-hashing --skip-python-version-check	--skip-torch-cuda-test --api-log --skip-install
set TF_ENABLE_ONEDNN_OPTS=0
@REM --skip-install
@REM --log-startup

@REM start "" /B http://localhost:7860/

@REM call webui.bat
%~dp0\stable-diffusion-webui\venv\Scripts\Python.exe  launch.py 