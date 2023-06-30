export WANDB_API_KEY = "" #your wandb key here
export LIBTPU_INIT_ARGS="--xla_enable_async_all_gather=true TPU_MEGACORE=MEGACORE_DENSE"
python3 MaxText/train.py MaxText/configs/base.yml