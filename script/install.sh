#!/bin/bash

cd "$(dirname "$0")"


# soundfile
apt update ; apt-get install libsndfile1 -y ; rm -rf /var/lib/apt/lists/*
pip install soundfile



# PaddleSpeech
#cd  /tmp ; git clone https://github.com/paddlepaddle/PaddleSpeech ; cd PaddleSpeech ; pip install -e .  ; rm -rf /tmp/PaddleSpeech



# test 
paddlespeech tts --input "你好，欢迎使用百度飞桨深度学习框架！" --output /tmp/output.wav ;  rm -rf /tmp/output.wav
python test.py ;  rm -rf /tmp/output.wav
