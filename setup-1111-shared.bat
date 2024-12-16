pip install huggingface_hub==0.25.2
git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git

pushd stable-diffusion-webui
git pull

pushd extensions
git clone https://github.com/Mikubill/sd-webui-controlnet.git
pushd sd-webui-controlnet
git pull

popd
git clone https://github.com/butaixianran/Stable-Diffusion-Webui-Civitai-Helper.git
pushd Stable-Diffusion-Webui-Civitai-Helper
git pull
popd

git clone https://github.com/ArtVentureX/sd-webui-agent-scheduler.git
pushd sd-webui-agent-scheduler
git pull
popd

git clone https://github.com/zanllp/sd-webui-infinite-image-browsing.git
pushd sd-webui-infinite-image-browsing
git pull
popd

git clone https://github.com/alemelis/sd-webui-ar.git
pushd sd-webui-ar
git pull
popd

git clone https://github.com/camenduru/stable-diffusion-webui-artists-to-study.git
pushd stable-diffusion-webui-artists-to-study
git pull
popd

git clone https://github.com/Bing-su/adetailer.git
pushd adetailer
git pull
popd

git clone https://github.com/aigc-apps/sd-webui-EasyPhoto.git
pushd sd-webui-EasyPhoto
git pull
popd

git clone https://github.com/civitai/sd_civitai_extension.git
pushd sd_civitai_extension
git pull

git clone https://github.com/DominikDoom/a1111-sd-webui-tagcomplete.git
pushd a1111-sd-webui-tagcomplete
git pull
popd

git clone https://github.com/continue-revolution/sd-webui-animatediff.git
pushd sd-webui-animatediff
git pull
echo "https://huggingface.co/conrevo/AnimateDiff-A1111/tree/main"
wget https://huggingface.co/conrevo/AnimateDiff-A1111/resolve/main/motion_module/mm_sd15_v3.safetensors -N -P model
popd

popd

@REM wget https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11f1p_sd15_depth.pth -N -P extensions/sd-webui-controlnet/models
@REM wget https://huggingface.co/lllyasviel/ControlNet-v1-1/resolve/main/control_v11f1e_sd15_tile.pth -N -P extensions/sd-webui-controlnet/models
@REM wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/blob/main/control_v11p_sd15_inpaint_fp16.safetensors  -N -P extensions/sd-webui-controlnet/models
wget https://huggingface.co/comfyanonymous/ControlNet-v1-1_fp16_safetensors/blob/main/control_v11p_sd15_inpaint_fp16.safetensors  -N -P extensions/sd-webui-controlnet/models

wget https://huggingface.co/XpucT/Deliberate/resolve/main/Deliberate_v2.safetensors -N -P models/Stable-diffusion/
wget https://huggingface.co/XpucT/Deliberate/resolve/main/Deliberate_v5.safetensors -N -P models/Stable-diffusion/
wget https://huggingface.co/SG161222/Realistic_Vision_V5.1_noVAE/resolve/main/Realistic_Vision_V5.1_fp16-no-ema.safetensors -N -P models/Stable-diffusion/

wget https://huggingface.co/digiplay/LORA/resolve/main/add_brightness.safetensors -N -P models/Lora/
wget https://huggingface.co/digiplay/LORA/resolve/main/add_detail.safetensors -N -P models/Lora/
wget https://huggingface.co/digiplay/LORA/resolve/main/add_saturation.safetensors -N -P models/Lora/
wget https://huggingface.co/digiplay/LORA/resolve/main/add_sharpness.safetensors -N -P models/Lora/
wget https://huggingface.co/digiplay/LORA/resolve/main/epi_noiseoffset2.safetensors -N -P models/Lora/
wget https://huggingface.co/JCTN/lora/resolve/main/LowRA.safetensors -N -P models/Lora/
wget https://huggingface.co/JCTN/lora/resolve/main/lit.safetensors -N -P models/Lora/
wget https://huggingface.co/JCTN/lora/resolve/main/COOLKIDS_MERGE_V2.5.safetensors -N -P models/Lora/
wget https://huggingface.co/latent-consistency/lcm-lora-sdv1-5/resolve/main/pytorch_lora_weights.safetensors -N -O models/Lora/lcm-lora-sdv1-5.safetensors

wget https://huggingface.co/datasets/gsdf/EasyNegative/resolve/main/EasyNegative.safetensors -N -P embeddings/
wget https://huggingface.co/Neburozakusu/civitai_deposit/resolve/main/bad-hands-5.pt -N -P embeddings/
wget https://huggingface.co/Neburozakusu/civitai_deposit/resolve/main/NG_DeepNegative_V1_75T.pt -N -P embeddings/
wget https://huggingface.co/datasets/Nerfgun3/bad_prompt/resolve/main/bad_prompt_version2.pt -N -P embeddings/
wget https://huggingface.co/gemasai/verybadimagenegative_v1.3/resolve/main/verybadimagenegative_v1.3.pt -N -P embeddings/
wget https://huggingface.co/AsciiP/badhandv4/resolve/main/badhandv4.pt -N -P embeddings/

popd
