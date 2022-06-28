# min(DALL·E)

[![Streamlit App](https://static.streamlit.io/badges/streamlit_badge_black_white.svg)](https://min-dalle.streamlitapp.com/)

This is a minimal implementation of [DALL·E Mini](https://github.com/borisdayma/dalle-mini).  It has been stripped to the bare essentials necessary for doing inference, and converted to PyTorch.  The only third party dependencies are `torch` for the torch model and `flax` for the flax model.

### Setup

Run `sh setup.sh` to install dependencies and download pretrained models.  In the bash script, GitHub LFS is used to download the VQGan detokenizer and the Weight & Biases python package is used to download the DALL·E Mini and DALL·E Mega transformer models.  These models can also be downloaded manually: 
[VQGan](https://huggingface.co/dalle-mini/vqgan_imagenet_f16_16384), 
[DALL·E Mini](https://wandb.ai/dalle-mini/dalle-mini/artifacts/DalleBart_model/mini-1/v0/files), 
[DALL·E Mega](https://wandb.ai/dalle-mini/dalle-mini/artifacts/DalleBart_model/mega-1-fp16/v14/files)

### Usage

Use the command line python script `image_from_text.py` to generate images. Here are some examples:

```
python image_from_text.py --text='alien life' --seed=7
```
![Alien](examples/alien.png)


```
python image_from_text.py --text='a comfy chair that looks like an avocado' --mega --seed=4
```
![Avocado Armchair](examples/avocado_armchair.png)


```
python image_from_text.py --text='court sketch of godzilla on trial' --mega --seed=100
```

![Godzilla Trial](examples/godzilla_trial.png)
