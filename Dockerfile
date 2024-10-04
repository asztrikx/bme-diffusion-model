FROM pytorch/pytorch:2.4.1-cuda11.8-cudnn9-runtime

WORKDIR /root

COPY requirements.txt ./requirements.txt

RUN pip install -r requirements.txt


