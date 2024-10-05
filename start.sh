#!/bin/bash
set -e

jupyter nbconvert --to script main.ipynb --output /tmp/main
	# .py extension is added by default

python /tmp/main.py
