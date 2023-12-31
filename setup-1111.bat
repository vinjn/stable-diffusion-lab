call %~dp0\setup-1111-shared.bat

pushd stable-diffusion-webui

set COMMANDLINE_ARGS=--xformers
webui.bat
popd

venv\Scripts\python -m pip install viztracer