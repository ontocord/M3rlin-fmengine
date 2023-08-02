deepspeed --num_gpus 4 --num_nodes 1 starter.py \
    --output_dir .cache/models \
    --init_ckpt /mnt/scratch/xiayao/cache/pretrained_weights/pythia-160m-deduped \
    --data_path /mnt/scratch/xiayao/cache/datasets/quantitative_natural_instructions/train/all.train.jsonl \
    --max_seq_len 1024 \
    --train_steps 1000 \
    --eval_steps 10 \
    --save_steps 100 \
    --log_steps 1 \
    --pipe_parallel_size 1 \
    --model_parallel_size 1 \
    --use_flash_attn true \
    --deepspeed_config ./configs/pythia.json