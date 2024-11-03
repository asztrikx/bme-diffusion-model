FROM pytorch/pytorch:2.4.1-cuda11.8-cudnn9-runtime

RUN mkdir /root/working
WORKDIR /root/working

COPY requirements.txt ./requirements.txt

RUN --mount=type=cache,target=/root/.cache/pip     pip install -r requirements.txt
	# https://docs.docker.com/build/cache/optimize/#use-cache-mounts

ENTRYPOINT [ "start.sh" ]
