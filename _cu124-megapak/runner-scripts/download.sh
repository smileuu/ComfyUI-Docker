#!/bin/bash

set -euo pipefail

# Regex that matches REPO_NAME
# First from pattern [https://example.com/xyz/REPO_NAME.git] or [git@example.com:xyz/REPO_NAME.git]
# Second from pattern [http(s)://example.com/xyz/REPO_NAME]
# They all extract REPO_NAME to BASH_REMATCH[2]
function clone_or_pull () {
    if [[ $1 =~ ^(.*[/:])(.*)(\.git)$ ]] || [[ $1 =~ ^(http.*\/)(.*)$ ]]; then
        echo "${BASH_REMATCH[2]}" ;
        set +e ;
            git clone --depth=1 --no-tags --recurse-submodules --shallow-submodules "$1" \
                || git -C "${BASH_REMATCH[2]}" pull --ff-only ;
        set -e ;
    else
        echo "[ERROR] Invalid URL: $1" ;
        return 1 ;
    fi ;
}


echo "########################################"
echo "[INFO] Downloading ComfyUI & Manager..."
echo "########################################"

cd /root
set +e
git clone https://github.com/comfyanonymous/ComfyUI.git \
    || git -C ComfyUI pull --ff-only
set -e

cd /root/ComfyUI/custom_nodes
clone_or_pull https://github.com/ltdrdata/ComfyUI-Manager.git


echo "########################################"
echo "[INFO] Downloading Custom Nodes..."
echo "########################################"

cd /root/ComfyUI/custom_nodes

# Workspace
clone_or_pull https://github.com/crystian/ComfyUI-Crystools.git

# General
clone_or_pull https://github.com/bash-j/mikey_nodes.git
clone_or_pull https://github.com/chrisgoringe/cg-use-everywhere.git
clone_or_pull https://github.com/cubiq/ComfyUI_essentials.git
clone_or_pull https://github.com/jags111/efficiency-nodes-comfyui.git
clone_or_pull https://github.com/kijai/ComfyUI-KJNodes.git
clone_or_pull https://github.com/pythongosssss/ComfyUI-Custom-Scripts.git
clone_or_pull https://github.com/rgthree/rgthree-comfy.git
clone_or_pull https://github.com/shiimizu/ComfyUI_smZNodes.git
clone_or_pull https://github.com/WASasquatch/was-node-suite-comfyui.git

# Control
clone_or_pull https://github.com/cubiq/ComfyUI_InstantID.git
clone_or_pull https://github.com/cubiq/ComfyUI_IPAdapter_plus.git
clone_or_pull https://github.com/cubiq/PuLID_ComfyUI.git
clone_or_pull https://github.com/Fannovel16/comfyui_controlnet_aux.git
clone_or_pull https://github.com/florestefano1975/comfyui-portrait-master.git
clone_or_pull https://github.com/Gourieff/ComfyUI-ReActor.git
clone_or_pull https://github.com/huchenlei/ComfyUI-layerdiffuse.git
clone_or_pull https://github.com/Kosinkadink/ComfyUI-Advanced-ControlNet.git
clone_or_pull https://github.com/ltdrdata/ComfyUI-Impact-Pack.git
clone_or_pull https://github.com/ltdrdata/ComfyUI-Impact-Subpack.git
clone_or_pull https://github.com/ltdrdata/ComfyUI-Inspire-Pack.git
clone_or_pull https://github.com/mcmonkeyprojects/sd-dynamic-thresholding.git
clone_or_pull https://github.com/storyicon/comfyui_segment_anything.git
clone_or_pull https://github.com/twri/sdxl_prompt_styler.git

# Video
clone_or_pull https://github.com/Fannovel16/ComfyUI-Frame-Interpolation.git
clone_or_pull https://github.com/FizzleDorf/ComfyUI_FizzNodes.git
clone_or_pull https://github.com/Kosinkadink/ComfyUI-AnimateDiff-Evolved.git
clone_or_pull https://github.com/Kosinkadink/ComfyUI-VideoHelperSuite.git
clone_or_pull https://github.com/melMass/comfy_mtb.git

# More
clone_or_pull https://github.com/cubiq/ComfyUI_FaceAnalysis.git
clone_or_pull https://github.com/pythongosssss/ComfyUI-WD14-Tagger.git
clone_or_pull https://github.com/SLAPaper/ComfyUI-Image-Selector.git
clone_or_pull https://github.com/ssitu/ComfyUI_UltimateSDUpscale.git


# 现在用的插件+揽睿拉的插件
clone_or_pull https://github.com/Comfy-Org/ComfyUI-Manager.git
clone_or_pull https://github.com/kijai/ComfyUI-WanVideoWrapper.git
clone_or_pull https://github.com/kijai/ComfyUI-HunyuanVideoWrapper.git
clone_or_pull https://github.com/chflame163/ComfyUI_LayerStyle.git
clone_or_pull https://github.com/city96/ComfyUI-GGUF.git
clone_or_pull https://github.com/kijai/ComfyUI-LivePortraitKJ.git
clone_or_pull https://github.com/kijai/ComfyUI-SUPIR.git
clone_or_pull https://github.com/Lightricks/ComfyUI-LTXVideo.git
clone_or_pull https://github.com/yolain/ComfyUI-Easy-Use.git
clone_or_pull https://github.com/AlekPet/ComfyUI_Custom_Nodes_AlekPet.git
clone_or_pull https://github.com/NimaNzrii/comfyui-photoshop.git
clone_or_pull https://github.com/mit-han-lab/ComfyUI-nunchaku.git
clone_or_pull https://github.com/kijai/ComfyUI-IC-Light.git
clone_or_pull https://github.com/Acly/comfyui-inpaint-nodes.git
clone_or_pull https://github.com/kijai/ComfyUI-FluxTrainer.git
clone_or_pull https://github.com/Suzie1/ComfyUI_Comfyroll_CustomNodes.git
clone_or_pull https://github.com/nullquant/ComfyUI-BrushNet.git
clone_or_pull https://github.com/SeargeDP/SeargeSDXL.git
clone_or_pull https://github.com/ZHO-ZHO-ZHO/ComfyUI-PhotoMaker-ZHO.git
clone_or_pull https://github.com/ali-vilab/TeaCache.git
clone_or_pull https://github.com/lquesada/ComfyUI-Inpaint-CropAndStitch.git
clone_or_pull https://github.com/TTPlanetPig/Comfyui_TTP_Toolset.git
clone_or_pull https://github.com/smthemex/ComfyUI_EchoMimic.git
clone_or_pull https://github.com/huchenlei/ComfyUI-IC-Light-Native.git
clone_or_pull https://github.com/kaibioinfo/ComfyUI_AdvancedRefluxControl.git
clone_or_pull https://github.com/john-mnz/ComfyUI-Inspyrenet-Rembg.git
clone_or_pull https://github.com/john-mnz/ComfyUI-Inspyrenet-Rembg.git
clone_or_pull https://github.com/NJU-3DV/Relightable3DGaussian.git
clone_or_pull https://github.com/lks-ai/anynode.git
clone_or_pull https://github.com/kijai/ComfyUI-Marigold.git
clone_or_pull https://github.com/TinyTerra/ComfyUI_tinyterraNodes.git
clone_or_pull https://github.com/TemryL/ComfyUI-IDM-VTON.git
clone_or_pull https://github.com/flowtyone/ComfyUI-Flowty-TripoSR.git
clone_or_pull https://github.com/gokayfem/ComfyUI_VLM_nodes.git
clone_or_pull https://github.com/Acly/comfyui-tooling-nodes.git
clone_or_pull https://github.com/kijai/ComfyUI-MimicMotionWrapper.git
clone_or_pull https://github.com/AuroBit/ComfyUI-OOTDiffusion.git
clone_or_pull https://github.com/alimama-creative/SDXL_EcomID_ComfyUI.git
clone_or_pull https://github.com/erosDiffusion/ComfyUI-enricos-nodes.git
clone_or_pull https://github.com/shiimizu/ComfyUI-TiledDiffusion.git
clone_or_pull https://github.com/smthemex/ComfyUI_StoryDiffusion.git
clone_or_pull https://github.com/smthemex/ComfyUI_StoryDiffusion.git
clone_or_pull https://github.com/Derfuu/Derfuu_ComfyUI_ModdedNodes.git
clone_or_pull https://github.com/Extraltodeus/ComfyUI-AutomaticCFG.git
clone_or_pull https://github.com/comfyanonymous/ComfyUI_bitsandbytes_NF4.git
clone_or_pull https://github.com/filliptm/ComfyUI_Fill-Nodes.git
clone_or_pull https://github.com/mingsky-ai/ComfyUI-MingNodes.git
clone_or_pull https://github.com/TencentQQGYLab/ComfyUI-ELLA.git
clone_or_pull https://github.com/BlenderNeko/ComfyUI_ADV_CLIP_emb.git
clone_or_pull https://github.com/kijai/ComfyUI-PyramidFlowWrapper.git
clone_or_pull https://github.com/ZHO-ZHO-ZHO/ComfyUI-BiRefNet-ZHO.git
clone_or_pull https://github.com/chflame163/ComfyUI_CatVTON_Wrapper.git
clone_or_pull https://github.com/kijai/ComfyUI-DepthAnythingV2.git
clone_or_pull https://github.com/chflame163/ComfyUI_LayerStyle_Advance.git
clone_or_pull https://github.com/MoonHugo/ComfyUI-BiRefNet-Hugo.git
clone_or_pull https://github.com/mav-rik/facerestore_cf.git
clone_or_pull https://github.com/giriss/comfy-image-saver.git
clone_or_pull https://github.com/asagi4/comfyui-prompt-control.git
clone_or_pull https://github.com/taabata/LCM_Inpaint_Outpaint_Comfy.git
clone_or_pull https://github.com/sipherxyz/comfyui-art-venture.git
clone_or_pull https://github.com/EllangoK/ComfyUI-post-processing-nodes.git
clone_or_pull https://github.com/AInseven/ComfyUI-fastblend.git
clone_or_pull https://github.com/Smirnov75/ComfyUI-mxToolkit.git
clone_or_pull https://github.com/theUpsider/ComfyUI-Logic.git
clone_or_pull https://github.com/kijai/ComfyUI-ControlNeXt-SVD.git
clone_or_pull https://github.com/2kpr/ComfyUI-PMRF.git
clone_or_pull https://github.com/kijai/ComfyUI-LBMWrapper.git
clone_or_pull https://github.com/LEv145/images-grid-comfy-plugin.git
clone_or_pull https://github.com/neverbiasu/ComfyUI-SAM2.git
clone_or_pull https://github.com/fssorc/ComfyUI_FaceShaper.git
clone_or_pull https://github.com/city96/SD-Latent-Upscaler.git
clone_or_pull https://github.com/Ryuukeisyou/comfyui_face_parsing.git
clone_or_pull https://github.com/omar92/ComfyUI-QualityOfLifeSuit_Omar92.git
clone_or_pull https://github.com/MaraScott/ComfyUI_MaraScott_Nodes.git
clone_or_pull https://github.com/kijai/ComfyUI-DDColor.git
clone_or_pull https://github.com/AIFSH/HivisionIDPhotos-ComfyUI.git
clone_or_pull https://github.com/ty0x2333/ComfyUI-Dev-Utils.git
clone_or_pull https://github.com/dchatel/comfyui_facetools.git
clone_or_pull https://github.com/CY-CHENYUE/ComfyUI-Molmo.git
clone_or_pull https://github.com/Layer-norm/comfyui-lama-remover.git
clone_or_pull https://github.com/evanspearman/ComfyMath.git
clone_or_pull https://github.com/mirabarukaso/ComfyUI_Mira.git
clone_or_pull https://github.com/ZHO-ZHO-ZHO/ComfyUI-Text_Image-Composite.git
clone_or_pull https://github.com/jamesWalker55/comfyui-various.git
clone_or_pull https://github.com/palant/image-resize-comfyui.git
clone_or_pull https://github.com/Seedsa/Fooocus_Nodes.git
clone_or_pull https://github.com/ssitu/ComfyUI_restart_sampling.git
clone_or_pull https://github.com/ArtBot2023/CharacterFaceSwap.git
clone_or_pull https://github.com/chaojie/ComfyUI-MotionCtrl-SVD.git
clone_or_pull https://github.com/chaojie/ComfyUI-MotionCtrl-SVD.git
clone_or_pull https://github.com/marhensa/sdxl-recommended-res-calc.git
clone_or_pull https://github.com/nkchocoai/ComfyUI-SaveImageWithMetaData.git
clone_or_pull https://github.com/chibiace/ComfyUI-Chibi-Nodes.git
clone_or_pull https://github.com/EeroHeikkinen/ComfyUI-eesahesNodes.git
clone_or_pull https://github.com/ciri/comfyui-model-downloader.git
clone_or_pull https://github.com/JPS-GER/ComfyUI_JPS-Nodes.git
clone_or_pull https://github.com/jhj0517/ComfyUI-Moondream-Gaze-Detection.git
clone_or_pull https://github.com/M1kep/ComfyLiterals.git
clone_or_pull https://github.com/M1kep/Comfy_KepListStuff.git
clone_or_pull https://github.com/wjl0313/ComfyUI_KimNodes.git
clone_or_pull https://github.com/JcandZero/ComfyUI_GLM4Node.git
clone_or_pull https://github.com/zcfrank1st/Comfyui-Yolov8.git
clone_or_pull https://github.com/antrobot1234/antrobots-comfyUI-nodepack.git
clone_or_pull https://github.com/rui40000/RUI-Nodes.git
clone_or_pull https://github.com/GavChap/ComfyUI-SD3LatentSelectRes.git
clone_or_pull https://github.com/ProGamerGov/ComfyUI_pytorch360convert.git
clone_or_pull https://github.com/licyk/ComfyUI-Restart-Sampler.git
clone_or_pull https://github.com/Ling-APE/ComfyUI-PixelResolutionCalculator.git
clone_or_pull https://github.com/WaqasHayder/ComfyUI-Image-Saver-With-MetaData.git
clone_or_pull https://github.com/Derfuu/Derfuu_ComfyUI_ModdedNodes.git
clone_or_pull https://github.com/chrisgoringe/cg-image-picker.git
clone_or_pull https://github.com/kijai/ComfyUI-Florence2.git
clone_or_pull https://github.com/alexgenovese/ComfyUI_HF_Servelress_Inference.git
clone_or_pull https://github.com/cardenluo/ComfyUI-Apt_Preset.git
clone_or_pull https://github.com/soulcreator11/ComfyUI_SimpleMath.git
clone_or_pull https://github.com/space-nuko/ComfyUI-OpenPose-Editor.git
clone_or_pull https://github.com/deroberon/StableZero123-comfyui.git
clone_or_pull https://github.com/GTSuya-Studio/ComfyUI-Gtsuya-Nodes.git
clone_or_pull https://github.com/zhiselfly/ComfyUI-Alimama-ControlNet-compatible.git
clone_or_pull https://github.com/cdb-boop/comfyui-image-round.git
clone_or_pull https://github.com/Stability-AI/stability-ComfyUI-nodes.git
clone_or_pull https://github.com/Ttl/ComfyUi_NNLatentUpscale.git
clone_or_pull https://github.com/risunobushi/comfyUI_FrequencySeparation_RGB-HSV.git
clone_or_pull https://github.com/Jonseed/ComfyUI-Detail-Daemon.git
clone_or_pull https://github.com/miaoshouai/ComfyUI-Miaoshouai-Tagger.git
clone_or_pull https://github.com/CavinHuang/comfyui-nodes-docs.git
clone_or_pull https://github.com/brianfitzgerald/style_aligned_comfy.git
clone_or_pull https://github.com/phuvinh010701/ComfyUI-Nudenet.git
clone_or_pull https://github.com/1038lab/ComfyUI-OmniGen.git
clone_or_pull https://github.com/ZHO-ZHO-ZHO/ComfyUI-BRIA_AI-RMBG.git
clone_or_pull https://github.com/pythongosssss/ComfyUI-WD14-Tagger.git
clone_or_pull https://github.com/IuvenisSapiens/ComfyUI_MiniCPM-V-2_6-int4.git
clone_or_pull https://github.com/SuperBeastsAI/ComfyUI-SuperBeasts.git
clone_or_pull https://github.com/wujm424606/ComfyUi-Ollama-YN.git
clone_or_pull https://github.com/stavsap/comfyui-ollama.git
clone_or_pull https://github.com/ZHO-ZHO-ZHO/ComfyUI-Gemini.git
clone_or_pull https://github.com/idrirap/ComfyUI-Lora-Auto-Trigger-Words.git
clone_or_pull https://github.com/kijai/ComfyUI-KwaiKolorsWrapper.git
clone_or_pull https://github.com/kijai/ComfyUI-DeepSeek-VL.git
clone_or_pull https://github.com/PowerHouseMan/ComfyUI-AdvancedLivePortrait.git
clone_or_pull https://github.com/frankchieng/ComfyUI_MagicClothing.git
clone_or_pull https://github.com/StartHua/Comfyui_CXH_joy_caption.git
clone_or_pull https://github.com/chflame163/ComfyUI_WordCloud.git
clone_or_pull https://github.com/MinusZoneAI/ComfyUI-Kolors-MZ.git
clone_or_pull https://github.com/ZHO-ZHO-ZHO/ComfyUI-BiRefNet-ZHO.git
clone_or_pull https://github.com/kijai/ComfyUI-DynamiCrafterWrapper.git
clone_or_pull https://github.com/banodoco/Steerable-Motion.git
clone_or_pull https://github.com/ZHO-ZHO-ZHO/ComfyUI-APISR.git
clone_or_pull https://github.com/city96/ComfyUI_ExtraModels.git
clone_or_pull https://github.com/TheMistoAI/ComfyUI-Anyline.git
clone_or_pull https://github.com/XLabs-AI/x-flux-comfyui.git
clone_or_pull https://github.com/smthemex/ComfyUI_InstantIR_Wrapper.git
clone_or_pull https://github.com/kijai/ComfyUI-CogVideoXWrapper.git
clone_or_pull https://github.com/11dogzi/Comfyui-ergouzi-Nodes.git
clone_or_pull https://github.com/kijai/ComfyUI-segment-anything-2.git
clone_or_pull https://github.com/kijai/ComfyUI-LivePortraitKJ.git
clone_or_pull https://github.com/ZHO-ZHO-ZHO/ComfyUI-Qwen-VL-API.git
clone_or_pull https://github.com/bmad4ever/comfyui_bmad_nodes.git
clone_or_pull https://github.com/AIrjen/OneButtonPrompt.git
clone_or_pull https://github.com/lldacing/ComfyUI_StableHair_ll.git
clone_or_pull https://github.com/StartHua/Comfyui-Mine-PhotoMaker.git
clone_or_pull https://github.com/Isi-dev/ComfyUI-UniAnimate-W.git
clone_or_pull https://github.com/LykosAI/ComfyUI-Inference-Core-Nodes.git
clone_or_pull https://github.com/diontimmer/ComfyUI-Vextra-Nodes.git
clone_or_pull https://github.com/Nourepide/ComfyUI-Allor.git
clone_or_pull https://github.com/AIFSH/ComfyUI-MimicBrush.git
clone_or_pull https://github.com/MixLabPro/comfyui-mixlab-nodes.git
clone_or_pull https://github.com/chflame163/ComfyUI_LayerStyle.git
clone_or_pull https://github.com/ZHO-ZHO-ZHO/ComfyUI-YoloWorld-EfficientSAM.git
clone_or_pull https://github.com/kijai/ComfyUI-MimicMotionWrapper.git
clone_or_pull https://github.com/pzc163/Comfyui-CatVTON.git
clone_or_pull https://github.com/spacepxl/ComfyUI-Image-Filters.git
clone_or_pull https://github.com/heshengtao/comfyui_LLM_party.git

echo "########################################"
echo "[INFO] Downloading Models..."
echo "########################################"

# Models
cd /root/ComfyUI/models
aria2c \
  --input-file=/runner-scripts/download-models.txt \
  --allow-overwrite=false \
  --auto-file-renaming=false \
  --continue=true \
  --max-connection-per-server=5

# Finish
touch /root/.download-complete
