import sox
import numpy as np
import math
import json
import json
import os

# ------------------------------------------------------------------------
# 选了的json有脏数据，这里删除
# ------------------------------------------------------------------------

json_dir = "/mnt/cephfs/hjh/train_record/super_resolution/aero/dataset/combine_vctk_musdb18-hq_json/json_16-24/tr"  # --------修改这里
# json_dir = "/mnt/cephfs/hjh/train_record/super_resolution/aero/dataset/combine_vctk_musdb18-hq_json/json_16-24/val"  # --------修改这里

stride = 2
segment = 2

lr_sr = 16000  # --------修改这里
hr_sr = 24000  # --------修改这里
pad = True

lr_stride = stride * lr_sr if stride else None
hr_stride = stride * hr_sr if stride else None
lr_length = segment * lr_sr if segment else None
hr_length = segment * hr_sr if segment else None

lr_json = os.path.join(json_dir, 'lr.json')
hr_json = os.path.join(json_dir, 'hr.json')

with open(lr_json, 'r') as f:
    lr = json.load(f)
with open(hr_json, 'r') as f:
    hr = json.load(f)

print(f"原始大小,lr:{len(lr)},hr:{len(hr)}")


def load_l_data(files, length, stride):
    num_examples = {}
    i = 0
    for file, file_length in files:
        if length is None:
            examples = 1
        elif file_length < length:
            examples = 1 if pad else 0
        elif pad:
            examples = int(math.ceil((file_length - length) / stride) + 1)
        else:
            examples = (file_length - length) // stride + 1

        num_examples[file] = (examples, i)
        i += 1

    return num_examples


lr_examples = load_l_data(lr, lr_length, lr_stride)
hr_examples = load_l_data(hr, hr_length, hr_stride)

assert len(lr_examples) == len(hr_examples)

for k in lr_examples.keys():
    h_k = k.replace("rs_wav16k", "rs_wav24k")  # --------修改这里

    if h_k not in hr_examples:
        print(f"---error:{h_k}")

    if lr_examples[k][0] != hr_examples[h_k][0]:
        print(f"lr:{lr_examples[k][0]},hr:{hr_examples[h_k][0]},需要在json文件去掉的文件：lr-file:{k},hr-file:{h_k}")

        del lr[lr_examples[k][1]]
        del hr[hr_examples[h_k][1]]

print(f"删除后大小,lr:{len(lr)},hr:{len(hr)}")

lr_data = json.dumps(lr, indent=4)
with open(lr_json, "w") as train_out:
    train_out.write(lr_data)

hr_data = json.dumps(hr, indent=4)
with open(hr_json, "w") as train_out:
    train_out.write(hr_data)

print("----已经重新写入json!")
