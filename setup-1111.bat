git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git

pushd stable-diffusion-webui
git pull

pushd extensions
git clone https://github.com/Mikubill/sd-webui-controlnet.git
git clone https://github.com/butaixianran/Stable-Diffusion-Webui-Civitai-Helper.git
git clone https://github.com/ArtVentureX/sd-webui-agent-scheduler.git
@REM git clone https://github.com/kohya-ss/sd-webui-additional-networks.git
git clone https://github.com/zanllp/sd-webui-infinite-image-browsing.git
git clone https://github.com/some9000/StylePile.git
popd

@REM control net
wget https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11f1p_sd15_depth.pth -N -P extensions/sd-webui-controlnet/models
wget https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11f1e_sd15_tile.pth -N -P extensions/sd-webui-controlnet/models

@REM base models
wget https://huggingface.co/XpucT/Deliberate/resolve/main/Deliberate_v2.safetensors -N -P models/Stable-diffusion/
wget https://huggingface.co/SG161222/Realistic_Vision_V5.1_noVAE/resolve/main/Realistic_Vision_V5.1_fp16-no-ema.safetensors -N -P models/Stable-diffusion/

@REM LORA
wget https://huggingface.co/digiplay/LORA/resolve/main/add_brightness.safetensors -N -P models/Lora/
wget https://huggingface.co/digiplay/LORA/resolve/main/add_detail.safetensors -N -P models/Lora/
wget https://huggingface.co/digiplay/LORA/resolve/main/add_saturation.safetensors -N -P models/Lora/
wget https://huggingface.co/digiplay/LORA/resolve/main/add_sharpness.safetensors -N -P models/Lora/
wget https://huggingface.co/digiplay/LORA/resolve/main/epi_noiseoffset2.safetensors -N -P models/Lora/
wget https://huggingface.co/JCTN/lora/resolve/main/LowRA.safetensors -N -P models/Lora/
wget https://huggingface.co/JCTN/lora/resolve/main/lit.safetensors -N -P models/Lora/
wget https://huggingface.co/JCTN/lora/resolve/main/COOLKIDS_MERGE_V2.5.safetensors -N -P models/Lora/

@REM embeddings
wget https://huggingface.co/datasets/gsdf/EasyNegative/resolve/main/EasyNegative.safetensors -N -P embeddings/
wget https://huggingface.co/Neburozakusu/civitai_deposit/resolve/main/bad-hands-5.pt -N -P embeddings/
wget https://huggingface.co/Neburozakusu/civitai_deposit/resolve/main/NG_DeepNegative_V1_75T.pt -N -P embeddings/
wget https://huggingface.co/datasets/Nerfgun3/bad_prompt/resolve/main/bad_prompt_version2.pt -N -P embeddings/
wget https://huggingface.co/gemasai/verybadimagenegative_v1.3/resolve/main/verybadimagenegative_v1.3.pt -N -P embeddings/

set COMMANDLINE_ARGS=--xformers
webui.bat
popd

venv\Scripts\python -m pip install viztracer