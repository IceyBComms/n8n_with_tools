FROM n8nio/n8n:latest

USER root
# Minimal, architecture-safe install (no OpenCV)
RUN apk add --no-cache \
      ffmpeg \
      python3 \
      py3-pip \
      yt-dlp \
      py3-numpy \
      py3-pillow \
      bash

USER node
