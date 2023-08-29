export MODEL_NAME="./stable-diffusion-xl-base-1.0"
export INSTANCE_DIR="./images/tangyauhoong"
export OUTPUT_DIR="lora-trained-xl"
export VAE_PATH="madebyollin/sdxl-vae-fp16-fix"

accelerate src/launch train_dreambooth_lora_sdxl.py \
  --pretrained_model_name_or_path=$MODEL_NAME  \
  --instance_data_dir=$INSTANCE_DIR \
  --pretrained_vae_model_name_or_path=$VAE_PATH \
  --output_dir=$OUTPUT_DIR \
  --mixed_precision="fp16" \
  --num_train_epochs=1 \
  --instance_prompt="abstract photos" \
  --resolution=1024 \
  --train_batch_size=2 \
  --gradient_accumulation_steps=4 \
  --learning_rate=1e-5 \
  --report_to="wandb" \
  --lr_scheduler="constant" \
  --lr_warmup_steps=0 \
  --max_train_steps=600 \
  --validation_prompt="abstract photos of different types" \
  --validation_epochs=1 \
  --seed="0" \
  --push_to_hub