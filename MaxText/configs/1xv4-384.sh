RUN_NAME=1x_v4-384_0010
python3 MaxText/train.py MaxText/configs/base.yml run_name=${RUN_NAME} enable_profiler=true enable_checkpointing=false steps=10 ici_fsdp_parallelism=192 ici_tensor_parallelism=1 scale=4 base_num_decoder_layers=8 per_device_batch_size=10 remat_policy=full base_emb_dim=3072 base_mlp_dim=12288 use_pjrt=0  learning_rate=1e-7
# achieves 152 TFLOP/s, 52B