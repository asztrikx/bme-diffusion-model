#!/bin/bash
set -e

jupyter trust main.ipynb
jupyter notebook --port 1234 --ip=0.0.0.0 --IdentityProvider.token='' --ServerApp.password='' --allow-root --no-browser

# jupyter nbconvert --to script main.ipynb --output /tmp/main
# 	# .py extension is added by default

# python /tmp/main.py
