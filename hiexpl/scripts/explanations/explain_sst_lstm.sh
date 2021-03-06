#!/bin/bash

model_path=${1}
lm_path=${2}
python explain.py --resume_snapshot ${1}  --task sst --method cd --batch_size 1 --exp_name .cd2019.3 --nb_range 10 --lm_path models/sst_lm_2/best_snapshot_devloss_11.634532430897588_iter_1300_model.pt --nb_method ngram --gpu 0 --sample_n 20 --start 0 --stop 100 --dataset test