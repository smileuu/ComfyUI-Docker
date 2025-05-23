import requests
import time
from typing import List, Dict
import json

#现在用的插件+揽睿插件
custom_nodes = [
    "ComfyUI_AdvancedRefluxControl",
    "comfyui_ttp_toolset",
    "ReLight",
    "ComfyUI-BiRefNet-Hugo",
    "comfy-image-saver",
    "ComfyUI-Model-Downloader",
    "comfyui-lama-remover",
    "ComfyLiterals",
    "ComfyUI-PMRF",
    "comfyui-inpaint-cropandstitch",
    "comfyui-pytorch360convert",
    "comfyui-enricos-nodes",
    "ComfyUI-GGUF",
    "comfyui-ic-light",
    "ComfyUI-QualityOfLifeSuit_Omar92",
    "teacache",
    "ComfyUI_JPS-Nodes",
    "antrobots-comfyUI-nodepack",
    "ComfyMath",
    "comfyui-depthanythingv2",
    "comfyui-various",
    "derfuu_comfyui_moddednodes",
    "cg-image-picker",
    "ComfyUI-Florence2",
    "ComfyUI_HF_Servelress_Inference",
    "ComfyUI-Apt_Preset",
    "ComfyUI_Comfyroll_CustomNodes",
    "comfyui-mimicmotionwrapper",
    "comfyui-brushnet",
    "ComfyUI-LBMWrapper",
    "ComfyUI-nunchaku",
    "ComfyUI-WanVideoWrapper",
    "ComfyUI-MingNodes",
    "ComfyUI-Manager",
    "comfyui_layerstyle",
    "comfyui-sam2",
    "ComfyUI-fastblend",
    "ComfyUI-BiRefNet",
    "comfyui-easy-use",
    "comfyui-inspyrenet-rembg",
    "comfyui_kimnodes",
    "ComfyUI_ADV_CLIP_emb",
    "ComfyUI-SD3LatentSelectRes",
    "RUI-Nodes",
    "ComfyUI-PixelResolutionCalculator",
    "ComfyUI_SimpleMath",
    "Comfyui-Yolov8",
    "SD-Latent-Upscaler",
    "ComfyUI-Restart-Sampler",
    "ComfyUI-mxToolkit",
    "sdxl-recommended-res-calc",
    "ComfyUI_bitsandbytes_NF4",
    "ComfyUI-IC-Light-Native",
    "ComfyUI-Logic",
    "ComfyUI-Molmo",
    "image-resize-comfyui",
    "ComfyUI-OpenPose-Editor",
    "StableZero123-comfyui",
    "ComfyUI-Gtsuya-Nodes",
    "ComfyUI-Alimama-ControlNet-compatible",
    "comfyui-image-round",
    "stability-ComfyUI-nodes",
    "ComfyUi_NNLatentUpscale",
    "comfyui-portrait-master-zh-cn",
    "comfyUI_FrequencySeparation_RGB-HSV",
    "ComfyUI-Detail-Daemon",
    "ComfyUI-Miaoshouai-Tagger",
    "comfyui-nodes-docs",
    "style_aligned_comfy",
    "ComfyUI-Nudenet",
    "ComfyUI-OmniGen",
    "ComfyUI-BRIA_AI-RMBG",
    "ComfyUI-WD14-Tagger",
    "ComfyUI_MiniCPM-V-2_6-int4",
    "ComfyUI-SuperBeasts",
    "ComfyUi-Ollama-YN",
    "comfyui-ollama",
    "ComfyUI-Gemini",
    "ComfyUI-Lora-Auto-Trigger-Words",
    "comfyui_storydiffusion",
    "comfyui-photoshop",
    "ComfyUI-Dev-Utils",
    "images-grid-comfy-plugin",
    "ComfyUI-PhotoMaker-ZHO",
    "ComfyUI-Image-Saver",
    "ComfyUI_restart_sampling",
    "ComfyUI-eesahesNodes",
    "ComfyUI-ELLA",
    "ComfyUI-CatVTON_Wrapper",
    "ComfyUI-Text_Image-Composite",
    "ComfyUI-post-processing-nodes",
    "ComfyUI-moondream",
    "ComfyUI-DDColor",
    "comfyui_facetools",
    "CharacterFaceSwap",
    "Derfuu_ComfyUI_ModdedNodes",
    "ComfyUI-Chibi-Nodes",
    "Comfy_KepListStuff",
    "comfyui-tooling-nodes",
    "ComfyUI_FaceShaper",
    "ComfyUI-TiledDiffusion",
    "ComfyUI-Marigold",
    "comfyui_face_parsing",
    "ComfyUI-ControlNeXt-SVD",
    "comfyui-inpaint-nodes",
    "ComfyUI-SaveImageWithMetaData",
    "ComfyUI-AutomaticCFG",
    "ComfyUI-LTXVideo",
    "ComfyUI-MotionCtrl",
    "ComfyUI-KwaiKolorsWrapper",
    "ComfyUI-DeepSeek-VL",
    "ComfyUI-AdvancedLivePortrait",
    "ComfyUI_MagicClothing",
    "Comfyui_CXH_joy_caption",
    "ComfyUI_WordCloud",
    "ComfyUI-Kolors-MZ",
    "ComfyUI-BiRefNet-ZHO",
    "ComfyUI-DynamiCrafterWrapper",
    "Steerable-Motion",
    "ComfyUI-APISR",
    "ComfyUI_ExtraModels",
    "ComfyUI-Anyline",
    "x-flux-comfyui",
    "ComfyUI_InstantIR_Wrapper",
    "ComfyUI-CogVideoXWrapper",
    "Comfyui-ergouzi-Nodes",
    "ComfyUI-segment-anything-2",
    "comfyui-liveportrait",
    "ComfyUI-Qwen-VL-API",
    "comfyui_bmad_nodes",
    "OneButtonPrompt",
    "ComfyUI_StableHair_ll",
    "ComfyUI-PyramidFlowWrapper",
    "ComfyUI-SUPIR",
    "ComfyUI_StoryDiffusion",
    "ComfyUI-OOTDiffusion",
    "comfyui-prompt-control",
    "facerestore_cf",
    "HivisionIDPhotos-ComfyUI",
    "ComfyUI-IDM-VTON",
    "ComfyUI_GLM4Node",
    "ComfyUI_tinyterraNodes",
    "ComfyUI-HunyuanVideoWrapper",
    "ComfyUI-Bringing-Old-Photos-Back-to-Life",
    "ComfyUI-Flowty-TripoSR",
    "ComfyUI_VLM_nodes",
    "LCM_Inpaint_Outpaint_Comfy",
    "SDXL_EcomID_ComfyUI",
    "ComfyUI_EchoMimic",
    "ComfyUI_LayerStyle_Advance",
    "ComfyUI-FluxTrainer",
    "Fooocus_Nodes",
    "ComfyUI-MotionCtrl-SVD",
    "comfyui-art-venture",
    "ComfyUI_Fill-Nodes",
    "ComfyUI-Inspyrenet-Rembg",
    "ComfyUI_MaraScott_Nodes",
    "SeargeSDXL",
    "ComfyUI_Mira",
    "ComfyUI-LivePortraitKJ",
    "anynode",
    "AlekPet",
    "Comfyui-Mine-PhotoMaker",
    "ComfyUI-UniAnimate-W",
    "ComfyUI-Inference-Core-Nodes",
    "ComfyUI-Vextra-Nodes",
    "ComfyUI-Allor",
    "ComfyUI-MimicBrush",
    "comfyui-mixlab-nodes",
    "ComfyUI_LayerStyle",
    "ComfyUI-YoloWorld-EfficientSAM",
    "ComfyUI-MimicMotion",
    "ComfyUI-CatVTON",
    "ComfyUI-Image-Filters",
    "comfyui_LLM_party"
];

def search_github_repo(repo_name: str, token: str = None) -> tuple[int, str]:
    """
    使用GitHub搜索API查找仓库
    Args:
        repo_name: 仓库名称
        token: GitHub Personal Access Token
    """
    search_url = f"https://api.github.com/search/repositories?q={repo_name}+in:name&sort=stars"
    headers = {
        'Accept': 'application/vnd.github.v3+json',
        'User-Agent': 'Python/Requests'
    }
    
    if token:
        headers['Authorization'] = f'token {token}'
    
    try:
        response = requests.get(search_url, headers=headers)
        print(f"Status code for {repo_name}: {response.status_code}")
        
        if response.status_code == 200:
            data = response.json()
            if data['total_count'] > 0:
                # 获取第一个匹配的结果
                repo = data['items'][0]
                stars = repo.get('stargazers_count', 0)
                url = repo.get('html_url', '')
                print(f"Found {stars} stars for {repo_name}")
                return stars, url
            else:
                print(f"No repository found for {repo_name}")
        elif response.status_code == 403:
            print("Rate limit exceeded or token invalid")
        else:
            print(f"Error {response.status_code} for {repo_name}")
        return 0, ''
    except Exception as e:
        print(f"Error searching {repo_name}: {str(e)}")
        return 0, ''

def main():
    # 从环境变量获取GitHub token
    github_token = ""
    if not github_token:
        print("Warning: GITHUB_TOKEN not set. API calls will be limited.")
    
    # 存储结果的列表
    results: List[Dict[str, str]] = []
    
    # 遍历所有节点
    for node in custom_nodes:
        print(f"\nProcessing {node}...")
        stars, url = search_github_repo(node, github_token)
        
        # 添加到结果列表
        results.append({
            "node_name": node,
            "url": url
        })
        
        # 添加延迟以避免GitHub API限制
        time.sleep(2)  # 使用token后可以减少延迟
    
    # 按star数排序
    sorted_results = sorted(results, key=lambda x: search_github_repo(x["node_name"], github_token)[0], reverse=True)
        
    
    # 打印结果
    print("\nTop nodes by GitHub stars:")
    for result in sorted_results:
        print(f"Node: {result['node_name']}")
        print(f"URL: {result['url']}")
        print("---")
    
        # 保存为JSON文件
    with open('github_stars.json', 'w', encoding='utf-8') as f:
        json.dump(sorted_results, f, ensure_ascii=False, indent=2)
    
    print("\nResults have been saved to github_stars.json")

if __name__ == "__main__":
    main() 