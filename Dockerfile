FROM nvcr.io/nvidia/l4t-pytorch:r32.5.0-pth1.7-py3

WORKDIR /root

RUN git clone https://github.com/ultralytics/yolov5.git \
&& cd yolov5 \
&& sed -i '/torchvision/d' requirements.txt \
&& pip3 install -U pip \
&& pip3 install -r requirements.txt


