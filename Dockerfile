FROM paddlepaddle/paddle:2.4.2
MAINTAINER lianshufeng <251708339@qq.com>


RUN apt-get update -y \
  && apt-get install libsndfile-dev libsndfile1 -y \
  && apt-get clean -y \
  && rm -rf /var/lib/apt/lists/*

RUN git clone --depth 1 https://github.com/PaddlePaddle/PaddleSpeech.git /home/PaddleSpeech  
RUN pip3 uninstall mccabe -y ; exit 0;
RUN pip3 install multiprocess==0.70.12 importlib-metadata==4.2.0 dill==0.3.4

WORKDIR /home/PaddleSpeech/
RUN python setup.py bdist_wheel
# RUN pip install dist/*.whl -i https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip install dist/*.whl


# 工作目录
WORKDIR /work


CMD ['bash']

