#!/bin/bash

# soundfile
apt update ; apt-get install libsndfile1 -y ; rm -rf /var/lib/apt/lists/*
pip install soundfile


# PaddleSpeech
#cd  /tmp ; git clone https://github.com/paddlepaddle/PaddleSpeech ; cd PaddleSpeech ; pip install -e .  ; rm -rf /tmp/PaddleSpeech

