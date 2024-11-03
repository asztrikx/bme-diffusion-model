FROM python:3.12
	# pytorch doesnt support newer (torchvision version will no be found, no proper error message 🙃)

RUN mkdir /root/working
WORKDIR /root/working

RUN pip install --upgrade pip

COPY requirements.txt ./requirements.txt
RUN --mount=type=cache,target=/root/.cache/pip     pip install -r requirements.txt
	# https://docs.docker.com/build/cache/optimize/#use-cache-mounts

ENTRYPOINT [ "./start.sh" ]
