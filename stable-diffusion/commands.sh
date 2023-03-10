
python main.py --base ./configs/stable-diffusion/v1-finetune_style.yaml \
    -t \
    --actual_resume /path/to/ckpt/model/of/stable_diffusion \
    -n horror_style3 \
    --gpus 0, \
    --data_root /path/to/data_images/ \
    --no-test

python ./scripts/invoke.py --embedding_path /path/to/embedding

    


invoke prompts suggestion
put text in "" and add explicit image 

-I path/to/image --- explicit picture
-n 3 --- number of variations


!fix ./outputs/img-samples/000044.2945021133.png -G 0.8 -U 2
!fix 0000045.4829112.png -G1 -U4 -ft codeformer
