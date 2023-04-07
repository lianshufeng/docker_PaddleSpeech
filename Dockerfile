FROM paddlepaddle/paddle:2.4.2
MAINTAINER lianshufeng <251708339@qq.com>

# 添加 依赖
Add ./ /docker

# 安装依赖 (cpu)
RUN pip install -r /docker/requirements.txt
RUN pip install --upgrade paddlespeech
RUN bash /docker/script/install.sh

# 工作目录
WORKDIR /work

