#!/bin/bash

export FLAGS_USE_STANDALONE_EXECUTOR=0
export FLAGS_eager_delete_tensor_gb=0.5


python3.7 ./ppcls/static/train.py -c ./ResNet50.yaml > ./new_executor_log/ResNet50_old_32.txt
python3.7 ./ppcls/static/train.py -c ./SE_ResNet50_vd.yaml > ./new_executor_log/SE_ResNet50_old_16.txt
python3.7 ./ppcls/static/train.py -c ./MobileNetV1.yaml > ./new_executor_log/MobileNetV1_old_16.txt
python3.7 ./ppcls/static/train.py -c ./AlexNet.yaml > ./new_executor_log/AlexNet_old_64.txt
python3.7 ./ppcls/static/train.py -c ./VGG19.yaml > ./new_executor_log/VGG19_old_32.txt
python3.7 ./ppcls/static/train.py -c ./GoogLeNet.yaml > ./new_executor_log/GoogLeNet_old_32.txt
python3.7 ./ppcls/static/train.py -c ./ShuffleNetV2_x0_5.yaml > ./new_executor_log/ShuffleNetV2_old_32.txt

python3.7 ./ppcls/static/train.py -c ./ResNet50_bs1.yaml > ./new_executor_log/ResNet50_old_1.txt
python3.7 ./ppcls/static/train.py -c ./SE_ResNet50_vd_bs1.yaml > ./new_executor_log/SE_ResNet50_old_1.txt
python3.7 ./ppcls/static/train.py -c ./MobileNetV1_bs1.yaml > ./new_executor_log/MobileNetV1_old_1.txt
python3.7 ./ppcls/static/train.py -c ./AlexNet_bs1.yaml > ./new_executor_log/AlexNet_old_1.txt
python3.7 ./ppcls/static/train.py -c ./VGG19_bs1.yaml > ./new_executor_log/VGG19_old_1.txt
python3.7 ./ppcls/static/train.py -c ./GoogLeNet_bs1.yaml > ./new_executor_log/GoogLeNet_old_1.txt
python3.7 ./ppcls/static/train.py -c ./ShuffleNetV2_x0_5_bs1.yaml > ./new_executor_log/ShuffleNetV2_old_1.txt

export FLAGS_USE_STANDALONE_EXECUTOR=1

python3.7 ./ppcls/static/train.py -c ./ResNet50.yaml > ./new_executor_log/ResNet50_new_32.txt
python3.7 ./ppcls/static/train.py -c ./SE_ResNet50_vd.yaml > ./new_executor_log/SE_ResNet50_new_16.txt
python3.7 ./ppcls/static/train.py -c ./MobileNetV1.yaml > ./new_executor_log/MobileNetV1_new_16.txt
python3.7 ./ppcls/static/train.py -c ./AlexNet.yaml > ./new_executor_log/AlexNet_new_64.txt
python3.7 ./ppcls/static/train.py -c ./VGG19.yaml > ./new_executor_log/VGG19_new_32.txt
python3.7 ./ppcls/static/train.py -c ./GoogLeNet.yaml > ./new_executor_log/GoogLeNet_new_32.txt
python3.7 ./ppcls/static/train.py -c ./ShuffleNetV2_x0_5.yaml > ./new_executor_log/ShuffleNetV2_new_32.txt

python3.7 ./ppcls/static/train.py -c ./ResNet50_bs1.yaml > ./new_executor_log/ResNet50_new_1.txt
python3.7 ./ppcls/static/train.py -c ./SE_ResNet50_vd_bs1.yaml > ./new_executor_log/SE_ResNet50_new_1.txt
python3.7 ./ppcls/static/train.py -c ./MobileNetV1_bs1.yaml > ./new_executor_log/MobileNetV1_new_1.txt
python3.7 ./ppcls/static/train.py -c ./AlexNet_bs1.yaml > ./new_executor_log/AlexNet_new_1.txt
python3.7 ./ppcls/static/train.py -c ./VGG19_bs1.yaml > ./new_executor_log/VGG19_new_1.txt
python3.7 ./ppcls/static/train.py -c ./GoogLeNet_bs1.yaml > ./new_executor_log/GoogLeNet_new_1.txt
python3.7 ./ppcls/static/train.py -c ./ShuffleNetV2_x0_5_bs1.yaml > ./new_executor_log/ShuffleNetV2_new_1.txt
