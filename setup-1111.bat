git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git

pushd stable-diffusion-webui
git pull

pushd extensions
git clone https://github.com/Mikubill/sd-webui-controlnet.git
git clone https://github.com/butaixianran/Stable-Diffusion-Webui-Civitai-Helper.git
git clone https://github.com/ArtVentureX/sd-webui-agent-scheduler.git
git clone https://github.com/kohya-ss/sd-webui-additional-networks.git
popd

wget https://huggingface.co/XpucT/Deliberate/resolve/main/Deliberate_v2.safetensors -N -P models/Stable-diffusion/

set COMMANDLINE_ARGS=--xformers
webui.bat
popd