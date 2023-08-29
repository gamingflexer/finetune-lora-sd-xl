# Fine-Tuning Stable Diffusion XL on Images from tangyauhoong
This repo contains code and instructions for fine-tuning Stable Diffusion XL on your own image dataset.

## Requirements

- GPU with at least 20GB VRAM
- Python 3.7+
- Diffusers
- Requirements from requirements_sdxl.txt

## Usage
1. Clone this repo

`git clone https://github.com/gamingflexer/finetune-lora-sd-xl.git`

2.  Install requirements
`pip install -r requirements_sdxl.txt`

3.  Prepare your image dataset of 200-300 images in a folder called data
4.  Update run.sh with your own hyperparameters and dataset folder path (Update epochs if needed)

Make run.sh executable
`chmod +x run.sh`

6.  Run fine-tuning

`./run.sh`

This will fine-tune Stable Diffusion XL on your dataset. Models and training logs will be saved to models/ folder.

Optionally, you can log training with Weights & Biases:

```
pip install wandb
wandb login
./run.sh
```

## Hugging Face Link Finetuned Model

[Link](https://huggingface.co/asach/tangyauhoong-images-sdxl)


