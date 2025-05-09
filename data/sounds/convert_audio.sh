#!/bin/bash

## convert audio to ogg 16bits 24khz mono
## for pygbag: https://pygame-web.github.io/

## ac: mono, ar: bit,
# ffmpeg -i file.wav -ar 24000 -ac 1 file.ogg -y
# ffmpeg -i file.wav -sample_fmt s16 file.ogg

directory="./book"

# Iterate through all .wav files in the specified directory
for file in "$directory"/*.wav; do
    ffmpeg -i "$file" -ar 24000 -ac 1 "${file%.wav}.ogg" -y
done
