git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git

pushd stable-diffusion-webui
git pull
set COMMANDLINE_ARGS=--xformers
webui.bat
popd