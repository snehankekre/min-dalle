#!/bin/bash

mkdir -p pretrained
mkdir -p pretrained/vqgan
mkdir -p pretrained/dalle_bart_mini

# download vqgan
curl https://huggingface.co/dalle-mini/vqgan_imagenet_f16_16384/resolve/main/flax_model.msgpack -L --output ./pretrained/vqgan/flax_model.msgpack
curl https://huggingface.co/dalle-mini/vqgan_imagenet_f16_16384/raw/main/config.json -L --output ./pretrained/vqgan/config.json

# download dalle-mini and dalle mega
curl https://huggingface.co/snehan/dalle_bart_mini/resolve/main/flax_model.msgpack -L --output ./pretrained/dalle_bart_mini/flax_model.msgpack
curl https://huggingface.co/snehan/dalle_bart_mini/raw/main/config.json -L --output ./pretrained/dalle_bart_mini/config.json
curl https://huggingface.co/snehan/dalle_bart_mini/raw/main/merges.txt -L --output ./pretrained/dalle_bart_mini/merges.txt
curl https://huggingface.co/snehan/dalle_bart_mini/raw/main/special_tokens_map.json -L --output ./pretrained/dalle_bart_mini/special_tokens_map.json
curl https://huggingface.co/snehan/dalle_bart_mini/raw/main/tokenizer.json -L --output ./pretrained/dalle_bart_mini/tokenizer.json
curl https://huggingface.co/snehan/dalle_bart_mini/raw/main/tokenizer_config.json -L --output ./pretrained/dalle_bart_mini/tokenizer_config.json
curl https://huggingface.co/snehan/dalle_bart_mini/raw/main/vocab.json -L --output ./pretrained/dalle_bart_mini/vocab.json
