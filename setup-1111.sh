#!/bin/bash

git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git

pushd stable-diffusion-webui
git pull

pushd extensions
git clone https://github.com/Mikubill/sd-webui-controlnet.git
git clone https://github.com/butaixianran/Stable-Diffusion-Webui-Civitai-Helper.git
git clone https://github.com/ArtVentureX/sd-webui-agent-scheduler.git
git clone https://github.com/zanllp/sd-webui-infinite-image-browsing.git
git clone https://github.com/some9000/StylePile.git
popd

# control net
wget https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11f1p_sd15_depth.pth -N -P extensions/sd-webui-controlnet/models
wget https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11f1e_sd15_tile.pth -N -P extensions/sd-webui-controlnet/models

# base models
wget https://huggingface.co/XpucT/Deliberate/resolve/main/Deliberate_v2.safetensors -N -P models/Stable-diffusion/
wget https://huggingface.co/SG161222/Realistic_Vision_V5.1_noVAE/resolve/main/Realistic_Vision_V5.1_fp16-no-ema.safetensors -N -P models/Stable-diffusion/

# LORA
wget https://huggingface.co/digiplay/LORA/resolve/main/add_brightness.safetensors -N -P models/Lora/
wget https://huggingface.co/digiplay/LORA/resolve/main/add_detail.safetensors -N -P models/Lora/
wget https://huggingface.co/digiplay/LORA/resolve/main/add_saturation.safetensors -N -P models/Lora/
wget https://huggingface.co/digiplay/LORA/resolve/main/add_sharpness.safetensors -N -P models/Lora/
wget https://huggingface.co/digiplay/LORA/resolve/main/epi_noiseoffset2.safetensors -N -P models/Lora/
wget https://huggingface.co/JCTN/lora/resolve/main/LowRA.safetensors -N -P models/Lora/
wget https://huggingface.co/JCTN/lora/resolve/main/lit.safetensors -N -P models/Lora/
wget https://huggingface.co/JCTN/lora/resolve/main/COOLKIDS_MERGE_V2.5.safetensors -N -P models/Lora/

# embeddings
wget https://huggingface.co/datasets/gsdf/EasyNegative/resolve/main/EasyNegative.safetensors -N -P embeddings/
wget https://huggingface.co/Neburozakusu/civitai_deposit/resolve/main/bad-hands-5.pt -N -P embeddings/
wget https://huggingface.co/Neburozakusu/civitai_deposit/resolve/main/NG_DeepNegative_V1_75T.pt -N -P embeddings/
wget https://huggingface.co/datasets/Nerfgun3/bad_prompt/resolve/main/bad_prompt_version2.pt -N -P embeddings/
wget https://huggingface.co/gemasai/verybadimagenegative_v1.3/resolve/main/verybadimagenegative_v1.3.pt -N -P embeddings/

# install python3.10
sudo apt install software-properties-common -y
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt install -y python3.10 python3.10-venv python3.10-pip

export COMMANDLINE_ARGS="--xformers --reinstall-xformers"
# pip3 install viztracer
python3.10 -m venv venv
# source venv/bin/activate
./webui.sh
popd
