FROM n8nio/n8n:latest

USER root
# n8n:latest is Alpine-based → use apk + pip
RUN apk add --no-cache ffmpeg python3 py3-pip \
 && python3 -m pip install --no-cache-dir -U pip \
 && python3 -m pip install --no-cache-dir yt-dlp opencv-python-headless numpy

USER node
