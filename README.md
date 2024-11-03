# Image generation with diffusion models

## Team information

* Team name: **ChaosAI**

* Members:
  * Molnár Levente - JGWFM2
  * Vörös Asztrik - WYZJ90 

## Project information:

### Description

Implement and train unconditional diffusion models, such as DDPM (Denoising Diffusion Probabilistic Model) or DDIM (Denoising Diffusion Implicit Model) for generating realistic images. 
Evaluate the capabilities of the models on two different datasets, such as CelebA and Flowers102.

### Files

* **main.ipynb**: 
  * source code of the project
* **Dockerfile**: 
  * defines the container configuration
* **requirements.txt**: 
  * defines the container dependencies with fixed versions
* **start.sh**: 
  * converts Jupyter notebook to Python script when the container starts
* **docker-compose.yml**: 
  * mount external folder to container

### Related works

* https://huggingface.co/blog/annotated-diffusion
* https://github.com/huggingface/diffusers
* https://keras.io/examples/generative/ddim/

### Run instructions
For evaluation only: set `eval_only = True` in main.ipynb

To also train: set `eval_only = False` in main.ipynb

To avoid running celeba for faster run speed: set `is_celeba_on = False` in main.ipynb

To avoid running visualization and analysis: set `visualize_and_analyze = false` in main.ipynb

Then run: `docker compose up`

In docker the run is significantly slower thanks to debug python builds: https://stackoverflow.com/a/76133102/4404911