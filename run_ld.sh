# export GLUE_DIR=./data

# PYTHONPATH=../ CUDA_VISIBLE_DEVICES=0,1,2,3 python3 run_ld.py \
#   --task_name fc \
#   --do_train \
#   --do_eval \
#   --do_lower_case \
#   --adv_training \
#   --data_dir ./datasets/ \
#   --bert_model bert-base-multilingual-cased \
#   --max_seq_length 128 \
#   --train_batch_size 16 \
#   --learning_rate 2e-5 \
#   --num_k 1 \
#   --num_self_train 1 \
#   --num_train_epochs 3.0 \
#   --output_dir /tmp/mld_ja_ld_output/ \

#!/bin/bash

# Run the Python script using the Python executable from the virtual environment
/mnt/c/Users/ezbol/OneDrive/Desktop/thesis-it_test-model/thesis-env/Scripts/python.exe run_ld.py \
  --task_name fc \
  --do_train \
  --do_lower_case \
  --data_dir ./datasets/ \
  --bert_model bert-base-multilingual-cased \
  --max_seq_length 128 \
  --train_batch_size 16 \
  --learning_rate 2e-5 \
  --num_k 5 \
  --num_self_train 2 \
  --num_train_epochs 1.0 \
  --output_dir ./tmp/mbert-sl_output/
