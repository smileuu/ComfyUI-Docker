#!/bin/bash
set -eu

echo '#' > pak5.txt

array=(
https://github.com/comfyanonymous/ComfyUI/raw/refs/heads/master/requirements.txt
https://github.com/crystian/ComfyUI-Crystools/raw/refs/heads/main/requirements.txt
https://github.com/cubiq/ComfyUI_essentials/raw/refs/heads/main/requirements.txt
https://github.com/cubiq/ComfyUI_FaceAnalysis/raw/refs/heads/main/requirements.txt
https://github.com/cubiq/ComfyUI_InstantID/raw/refs/heads/main/requirements.txt
https://github.com/cubiq/PuLID_ComfyUI/raw/refs/heads/main/requirements.txt
https://github.com/Fannovel16/comfyui_controlnet_aux/raw/refs/heads/main/requirements.txt
https://github.com/Fannovel16/ComfyUI-Frame-Interpolation/raw/refs/heads/main/requirements-no-cupy.txt
https://github.com/FizzleDorf/ComfyUI_FizzNodes/raw/refs/heads/main/requirements.txt
https://github.com/Gourieff/ComfyUI-ReActor/raw/refs/heads/main/requirements.txt
https://github.com/huchenlei/ComfyUI-layerdiffuse/raw/refs/heads/main/requirements.txt
https://github.com/jags111/efficiency-nodes-comfyui/raw/refs/heads/main/requirements.txt
https://github.com/kijai/ComfyUI-KJNodes/raw/refs/heads/main/requirements.txt
https://github.com/Kosinkadink/ComfyUI-VideoHelperSuite/raw/refs/heads/main/requirements.txt
https://github.com/ltdrdata/ComfyUI-Impact-Pack/raw/refs/heads/Main/requirements.txt
https://github.com/ltdrdata/ComfyUI-Impact-Subpack/raw/refs/heads/main/requirements.txt
https://github.com/ltdrdata/ComfyUI-Inspire-Pack/raw/refs/heads/main/requirements.txt
https://github.com/ltdrdata/ComfyUI-Manager/raw/refs/heads/main/requirements.txt
https://github.com/melMass/comfy_mtb/raw/refs/heads/main/requirements.txt
https://github.com/storyicon/comfyui_segment_anything/raw/refs/heads/main/requirements.txt
https://github.com/WASasquatch/was-node-suite-comfyui/raw/refs/heads/main/requirements.txt

#现在用的插件+揽睿插件
https://github.com/Comfy-Org/ComfyUI-Manager.git
https://github.com/kijai/ComfyUI-WanVideoWrapper.git
https://github.com/kijai/ComfyUI-HunyuanVideoWrapper.git
https://github.com/chflame163/ComfyUI_LayerStyle.git
https://github.com/city96/ComfyUI-GGUF.git
https://github.com/kijai/ComfyUI-LivePortraitKJ.git
https://github.com/kijai/ComfyUI-SUPIR.git
https://github.com/Lightricks/ComfyUI-LTXVideo.git
https://github.com/yolain/ComfyUI-Easy-Use.git
https://github.com/AlekPet/ComfyUI_Custom_Nodes_AlekPet.git
https://github.com/NimaNzrii/comfyui-photoshop.git
https://github.com/mit-han-lab/ComfyUI-nunchaku.git
https://github.com/kijai/ComfyUI-IC-Light.git
https://github.com/Acly/comfyui-inpaint-nodes.git
https://github.com/kijai/ComfyUI-FluxTrainer.git
https://github.com/Suzie1/ComfyUI_Comfyroll_CustomNodes.git
https://github.com/nullquant/ComfyUI-BrushNet.git
https://github.com/SeargeDP/SeargeSDXL.git
https://github.com/ZHO-ZHO-ZHO/ComfyUI-PhotoMaker-ZHO.git
https://github.com/ali-vilab/TeaCache.git
https://github.com/lquesada/ComfyUI-Inpaint-CropAndStitch.git
https://github.com/TTPlanetPig/Comfyui_TTP_Toolset.git
https://github.com/smthemex/ComfyUI_EchoMimic.git
https://github.com/huchenlei/ComfyUI-IC-Light-Native.git
https://github.com/kaibioinfo/ComfyUI_AdvancedRefluxControl.git
https://github.com/john-mnz/ComfyUI-Inspyrenet-Rembg.git
https://github.com/john-mnz/ComfyUI-Inspyrenet-Rembg.git
https://github.com/NJU-3DV/Relightable3DGaussian.git
https://github.com/lks-ai/anynode.git
https://github.com/kijai/ComfyUI-Marigold.git
https://github.com/TinyTerra/ComfyUI_tinyterraNodes.git
https://github.com/TemryL/ComfyUI-IDM-VTON.git
https://github.com/flowtyone/ComfyUI-Flowty-TripoSR.git
https://github.com/gokayfem/ComfyUI_VLM_nodes.git
https://github.com/Acly/comfyui-tooling-nodes.git
https://github.com/kijai/ComfyUI-MimicMotionWrapper.git
https://github.com/AuroBit/ComfyUI-OOTDiffusion.git
https://github.com/alimama-creative/SDXL_EcomID_ComfyUI.git
https://github.com/erosDiffusion/ComfyUI-enricos-nodes.git
https://github.com/shiimizu/ComfyUI-TiledDiffusion.git
https://github.com/smthemex/ComfyUI_StoryDiffusion.git
https://github.com/smthemex/ComfyUI_StoryDiffusion.git
https://github.com/Derfuu/Derfuu_ComfyUI_ModdedNodes.git
https://github.com/Extraltodeus/ComfyUI-AutomaticCFG.git
https://github.com/comfyanonymous/ComfyUI_bitsandbytes_NF4.git
https://github.com/filliptm/ComfyUI_Fill-Nodes.git
https://github.com/mingsky-ai/ComfyUI-MingNodes.git
https://github.com/TencentQQGYLab/ComfyUI-ELLA.git
https://github.com/BlenderNeko/ComfyUI_ADV_CLIP_emb.git
https://github.com/kijai/ComfyUI-PyramidFlowWrapper.git
https://github.com/ZHO-ZHO-ZHO/ComfyUI-BiRefNet-ZHO.git
https://github.com/chflame163/ComfyUI_CatVTON_Wrapper.git
https://github.com/kijai/ComfyUI-DepthAnythingV2.git
https://github.com/chflame163/ComfyUI_LayerStyle_Advance.git
https://github.com/MoonHugo/ComfyUI-BiRefNet-Hugo.git
https://github.com/mav-rik/facerestore_cf.git
https://github.com/giriss/comfy-image-saver.git
https://github.com/asagi4/comfyui-prompt-control.git
https://github.com/taabata/LCM_Inpaint_Outpaint_Comfy.git
https://github.com/sipherxyz/comfyui-art-venture.git
https://github.com/EllangoK/ComfyUI-post-processing-nodes.git
https://github.com/AInseven/ComfyUI-fastblend.git
https://github.com/Smirnov75/ComfyUI-mxToolkit.git
https://github.com/theUpsider/ComfyUI-Logic.git
https://github.com/kijai/ComfyUI-ControlNeXt-SVD.git
https://github.com/2kpr/ComfyUI-PMRF.git
https://github.com/kijai/ComfyUI-LBMWrapper.git
https://github.com/LEv145/images-grid-comfy-plugin.git
https://github.com/neverbiasu/ComfyUI-SAM2.git
https://github.com/fssorc/ComfyUI_FaceShaper.git
https://github.com/city96/SD-Latent-Upscaler.git
https://github.com/Ryuukeisyou/comfyui_face_parsing.git
https://github.com/omar92/ComfyUI-QualityOfLifeSuit_Omar92.git
https://github.com/MaraScott/ComfyUI_MaraScott_Nodes.git
https://github.com/kijai/ComfyUI-DDColor.git
https://github.com/AIFSH/HivisionIDPhotos-ComfyUI.git
https://github.com/ty0x2333/ComfyUI-Dev-Utils.git
https://github.com/dchatel/comfyui_facetools.git
https://github.com/CY-CHENYUE/ComfyUI-Molmo.git
https://github.com/Layer-norm/comfyui-lama-remover.git
https://github.com/evanspearman/ComfyMath.git
https://github.com/mirabarukaso/ComfyUI_Mira.git
https://github.com/ZHO-ZHO-ZHO/ComfyUI-Text_Image-Composite.git
https://github.com/jamesWalker55/comfyui-various.git
https://github.com/palant/image-resize-comfyui.git
https://github.com/Seedsa/Fooocus_Nodes.git
https://github.com/ssitu/ComfyUI_restart_sampling.git
https://github.com/ArtBot2023/CharacterFaceSwap.git
https://github.com/chaojie/ComfyUI-MotionCtrl-SVD.git
https://github.com/chaojie/ComfyUI-MotionCtrl-SVD.git
https://github.com/marhensa/sdxl-recommended-res-calc.git
https://github.com/nkchocoai/ComfyUI-SaveImageWithMetaData.git
https://github.com/chibiace/ComfyUI-Chibi-Nodes.git
https://github.com/EeroHeikkinen/ComfyUI-eesahesNodes.git
https://github.com/ciri/comfyui-model-downloader.git
https://github.com/JPS-GER/ComfyUI_JPS-Nodes.git
https://github.com/jhj0517/ComfyUI-Moondream-Gaze-Detection.git
https://github.com/M1kep/ComfyLiterals.git
https://github.com/M1kep/Comfy_KepListStuff.git
https://github.com/wjl0313/ComfyUI_KimNodes.git
https://github.com/JcandZero/ComfyUI_GLM4Node.git
https://github.com/zcfrank1st/Comfyui-Yolov8.git
https://github.com/antrobot1234/antrobots-comfyUI-nodepack.git
https://github.com/rui40000/RUI-Nodes.git
https://github.com/GavChap/ComfyUI-SD3LatentSelectRes.git
https://github.com/ProGamerGov/ComfyUI_pytorch360convert.git
https://github.com/licyk/ComfyUI-Restart-Sampler.git
https://github.com/Ling-APE/ComfyUI-PixelResolutionCalculator.git
https://github.com/WaqasHayder/ComfyUI-Image-Saver-With-MetaData.git
https://github.com/Derfuu/Derfuu_ComfyUI_ModdedNodes.git
https://github.com/chrisgoringe/cg-image-picker.git
https://github.com/kijai/ComfyUI-Florence2.git
https://github.com/alexgenovese/ComfyUI_HF_Servelress_Inference.git
https://github.com/cardenluo/ComfyUI-Apt_Preset.git
https://github.com/soulcreator11/ComfyUI_SimpleMath.git
https://github.com/space-nuko/ComfyUI-OpenPose-Editor.git
https://github.com/deroberon/StableZero123-comfyui.git
https://github.com/GTSuya-Studio/ComfyUI-Gtsuya-Nodes.git
https://github.com/zhiselfly/ComfyUI-Alimama-ControlNet-compatible.git
https://github.com/cdb-boop/comfyui-image-round.git
https://github.com/Stability-AI/stability-ComfyUI-nodes.git
https://github.com/Ttl/ComfyUi_NNLatentUpscale.git
https://github.com/risunobushi/comfyUI_FrequencySeparation_RGB-HSV.git
https://github.com/Jonseed/ComfyUI-Detail-Daemon.git
https://github.com/miaoshouai/ComfyUI-Miaoshouai-Tagger.git
https://github.com/CavinHuang/comfyui-nodes-docs.git
https://github.com/brianfitzgerald/style_aligned_comfy.git
https://github.com/phuvinh010701/ComfyUI-Nudenet.git
https://github.com/1038lab/ComfyUI-OmniGen.git
https://github.com/ZHO-ZHO-ZHO/ComfyUI-BRIA_AI-RMBG.git
https://github.com/pythongosssss/ComfyUI-WD14-Tagger.git
https://github.com/IuvenisSapiens/ComfyUI_MiniCPM-V-2_6-int4.git
https://github.com/SuperBeastsAI/ComfyUI-SuperBeasts.git
https://github.com/wujm424606/ComfyUi-Ollama-YN.git
https://github.com/stavsap/comfyui-ollama.git
https://github.com/ZHO-ZHO-ZHO/ComfyUI-Gemini.git
https://github.com/idrirap/ComfyUI-Lora-Auto-Trigger-Words.git
https://github.com/kijai/ComfyUI-KwaiKolorsWrapper.git
https://github.com/kijai/ComfyUI-DeepSeek-VL.git
https://github.com/PowerHouseMan/ComfyUI-AdvancedLivePortrait.git
https://github.com/frankchieng/ComfyUI_MagicClothing.git
https://github.com/StartHua/Comfyui_CXH_joy_caption.git
https://github.com/chflame163/ComfyUI_WordCloud.git
https://github.com/MinusZoneAI/ComfyUI-Kolors-MZ.git
https://github.com/ZHO-ZHO-ZHO/ComfyUI-BiRefNet-ZHO.git
https://github.com/kijai/ComfyUI-DynamiCrafterWrapper.git
https://github.com/banodoco/Steerable-Motion.git
https://github.com/ZHO-ZHO-ZHO/ComfyUI-APISR.git
https://github.com/city96/ComfyUI_ExtraModels.git
https://github.com/TheMistoAI/ComfyUI-Anyline.git
https://github.com/XLabs-AI/x-flux-comfyui.git
https://github.com/smthemex/ComfyUI_InstantIR_Wrapper.git
https://github.com/kijai/ComfyUI-CogVideoXWrapper.git
https://github.com/11dogzi/Comfyui-ergouzi-Nodes.git
https://github.com/kijai/ComfyUI-segment-anything-2.git
https://github.com/kijai/ComfyUI-LivePortraitKJ.git
https://github.com/ZHO-ZHO-ZHO/ComfyUI-Qwen-VL-API.git
https://github.com/bmad4ever/comfyui_bmad_nodes.git
https://github.com/AIrjen/OneButtonPrompt.git
https://github.com/lldacing/ComfyUI_StableHair_ll.git
https://github.com/StartHua/Comfyui-Mine-PhotoMaker.git
https://github.com/Isi-dev/ComfyUI-UniAnimate-W.git
https://github.com/LykosAI/ComfyUI-Inference-Core-Nodes.git
https://github.com/diontimmer/ComfyUI-Vextra-Nodes.git
https://github.com/Nourepide/ComfyUI-Allor.git
https://github.com/AIFSH/ComfyUI-MimicBrush.git
https://github.com/MixLabPro/comfyui-mixlab-nodes.git
https://github.com/chflame163/ComfyUI_LayerStyle.git
https://github.com/ZHO-ZHO-ZHO/ComfyUI-YoloWorld-EfficientSAM.git
https://github.com/kijai/ComfyUI-MimicMotionWrapper.git
https://github.com/pzc163/Comfyui-CatVTON.git
https://github.com/spacepxl/ComfyUI-Image-Filters.git
https://github.com/heshengtao/comfyui_LLM_party.git

)

for line in "${array[@]}";
    do curl -w "\n" -sSL "${line}" >> pak5.txt
done

sed -i '/^#/d' pak5.txt
sed -i 's/[[:space:]]*$//' pak5.txt
sed -i 's/>=.*$//' pak5.txt
sed -i 's/_/-/g' pak5.txt

# Don't "sort foo.txt >foo.txt". See: https://stackoverflow.com/a/29244408
sort -ufo pak5.txt pak5.txt

# Remove duplicate items, compare to pak3.txt
grep -Fixv -f pak3.txt pak5.txt > temp.txt && mv temp.txt pak5.txt

echo "<pak5.txt> generated. Check before use."
