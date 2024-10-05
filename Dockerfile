FROM pytorch/pytorch:2.4.1-cuda11.8-cudnn9-runtime

RUN mkdir /root/working
WORKDIR /root/working

COPY requirements.txt ./requirements.txt

RUN pip install -r requirements.txt

ENTRYPOINT [ "start.sh" ]
