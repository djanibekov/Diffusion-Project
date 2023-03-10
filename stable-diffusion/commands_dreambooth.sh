accelerate launch train_dreambooth.py \
  --pretrained_model_name_or_path="stable-diffusion-v1-5" \
  --output_dir="/home/amirbek.djanibekov/Documents/ai-project/output_models" \
  --concepts_list concepts.json \
  --resolution=512 \
  --train_batch_size=1 \
  --train_text_encoder \
  --mixed_precision="fp16" \
  --use_8bit_adam \
  --gradient_accumulation_steps=1 \
  --gradient_checkpointing \
  --learning_rate=1e-6 \
  --lr_scheduler="constant" \
  --lr_warmup_steps=200 \
  --num_class_images=300 \
  --max_train_steps=2000 \
  --save_interval=500





export MODEL_NAME="/home/amirbek.djanibekov/Documents/ai-project/stable-diffusion-v1-5"
export INSTANCE_DIR="/home/amirbek.djanibekov/Documents/ai-project/data/512x512/adventure_filtered/style1"
export OUTPUT_DIR="/home/amirbek.djanibekov/Documents/ai-project/output_models"

accelerate launch train_dreambooth.py \
  --pretrained_model_name_or_path=$MODEL_NAME  \
  --instance_data_dir=$INSTANCE_DIR \
  --output_dir=$OUTPUT_DIR \
  --instance_prompt="adventure st1 style" \
  --resolution=512 \
  --train_batch_size=1 \
  --gradient_accumulation_steps=1 \
  --learning_rate=5e-6 \
  --lr_scheduler="constant" \
  --lr_warmup_steps=0 \
  --max_train_steps=100