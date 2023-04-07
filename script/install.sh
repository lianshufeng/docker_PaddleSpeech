#!/bin/bash

cd "$(dirname "$0")"


# soundfile
apt update ; apt-get install libsndfile1 -y ; rm -rf /var/lib/apt/lists/*
pip install soundfile



# PaddleSpeech
#cd  /tmp ; git clone https://github.com/paddlepaddle/PaddleSpeech ; cd PaddleSpeech ; pip install -e .  ; rm -rf /tmp/PaddleSpeech



# test 
paddlespeech tts --input "请确认我的以下请求。请您作为产品经理回复我。我将会提供一个主题，您将帮助我编写一份包括以下章节标题的PRD文档：主题、简介、问题陈述、目标与目的、用户故事、技术要求、收益、KPI指标、开发风险以及结论。在我要求具体主题、功能或开发的PRD之前，请不要先写任何一份PRD文档。" --output /tmp/output.wav ;  rm -rf /tmp/output.wav
python test.py ;  rm -rf /tmp/output.wav
