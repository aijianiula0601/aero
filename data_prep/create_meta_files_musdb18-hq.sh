#!/bin/bash

set -ex

cd ../

#-------------------------------------------
# 记得重新设置create_meta_files.py中的参数
# TOTAL_N_SPEAKERS = 100
# TRAIN_N_SPEAKERS = 100
# TEST_N_SPEAKERS = 0
#-------------------------------------------


base_dir="/mnt/cephfs/hjh/train_record/super_resolution/aero/dataset/musdb18-hq"

#--------------------------------
# 8kHZ-16kHZ
#--------------------------------
data_dir="${base_dir}/rs_wav8k"
save_json_dir="${base_dir}/json_8-16"
json_name="lr"
python data_prep/create_meta_files.py ${data_dir} ${save_json_dir} lr
data_dir="${base_dir}/rs_wav16k"
json_name="hr"
python data_prep/create_meta_files.py ${data_dir} ${save_json_dir} hr


#--------------------------------
# 8kHZ-24kHZ
#--------------------------------
data_dir="${base_dir}/rs_wav8k"
save_json_dir="${base_dir}/json_8-24"
json_name="lr"
python data_prep/create_meta_files.py ${data_dir} ${save_json_dir} lr
data_dir="${base_dir}/rs_wav24k"
json_name="hr"
python data_prep/create_meta_files.py ${data_dir} ${save_json_dir} hr


#--------------------------------
# 16kHZ-24kHZ
#--------------------------------
data_dir="${base_dir}/rs_wav16k"
save_json_dir="${base_dir}/json_16-24"
json_name="lr"
python data_prep/create_meta_files.py ${data_dir} ${save_json_dir} lr
data_dir="${base_dir}/rs_wav24k"
json_name="hr"
python data_prep/create_meta_files.py ${data_dir} ${save_json_dir} hr


#--------------------------------
# 16kHZ-44kHZ
#--------------------------------
data_dir="${base_dir}/rs_wav16k"
save_json_dir="${base_dir}/json_16-44"
json_name="lr"
python data_prep/create_meta_files.py ${data_dir} ${save_json_dir} lr
data_dir="${base_dir}/train_44k"
json_name="hr"
python data_prep/create_meta_files.py ${data_dir} ${save_json_dir} hr


#--------------------------------
# 24kHZ-44kHZ
#--------------------------------
data_dir="${base_dir}/rs_wav24k"
save_json_dir="${base_dir}/json_24-44"
json_name="lr"
python data_prep/create_meta_files.py ${data_dir} ${save_json_dir} lr
data_dir="${base_dir}/train_44k"
json_name="hr"
python data_prep/create_meta_files.py ${data_dir} ${save_json_dir} hr
