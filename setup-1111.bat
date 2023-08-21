git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git

pushd stable-diffusion-webui
git pull

pushd extensions
git clone https://github.com/Mikubill/sd-webui-controlnet.git
git clone https://github.com/butaixianran/Stable-Diffusion-Webui-Civitai-Helper.git
git clone https://github.com/ArtVentureX/sd-webui-agent-scheduler.git
git clone https://github.com/kohya-ss/sd-webui-additional-networks.git
git clone https://github.com/zanllp/sd-webui-infinite-image-browsing.git
git clone https://github.com/some9000/StylePile.git
popd

@REM base models
call wget https://huggingface.co/XpucT/Deliberate/resolve/main/Deliberate_v2.safetensors -N -P models/Stable-diffusion/
call wget https://huggingface.co/SG161222/Realistic_Vision_V5.1_noVAE/resolve/main/Realistic_Vision_V5.1_fp16-no-ema.safetensors -N -P models/Stable-diffusion/

@REM LORA
call wget https://huggingface.co/digiplay/LORA/resolve/main/add_brightness.safetensors -N -P models/Lora/
call wget https://huggingface.co/digiplay/LORA/resolve/main/add_detail.safetensors -N -P models/Lora/
call wget https://huggingface.co/digiplay/LORA/resolve/main/add_saturation.safetensors -N -P models/Lora/
call wget https://huggingface.co/digiplay/LORA/resolve/main/add_sharpness.safetensors -N -P models/Lora/
call wget https://huggingface.co/digiplay/LORA/resolve/main/epi_noiseoffset2.safetensors -N -P models/Lora/
call wget https://huggingface.co/JCTN/lora/resolve/main/LowRA.safetensors -N -P models/Lora
call wget https://huggingface.co/JCTN/lora/resolve/main/lit.safetensors -N -P models/Lora
call wget https://huggingface.co/JCTN/lora/resolve/main/COOLKIDS_MERGE_V2.5.safetensors -N -P models/Lora

set COMMANDLINE_ARGS=--xformers
webui.bat
popd