pushd stable-diffusion-webui

@echo off

set PYTHON=
set GIT=
set VENV_DIR=
@REM set COMMANDLINE_ARGS=--api
set COMMANDLINE_ARGS=--api --xformers --skip-version-check --no-hashing --skip-python-version-check	--skip-torch-cuda-test --api-log
@REM --skip-install
@REM --log-startup

@REM start "" /B http://localhost:7860/

call webui.bat
@REM "c:\p4\stable-diffusion-webui\venv\Scripts\Python.exe"  launch.py 