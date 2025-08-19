FROM n8nio/n8n:latest

USER root
# Alpine-based image: use apk. Install tools we need and bash for Execute Command nodes.
RUN apk add --no-cache \
      ffmpeg \
      python3 \
      py3-pip \
      yt-dlp \
      py3-numpy \
      py3-pillow \
      bash

USER node
