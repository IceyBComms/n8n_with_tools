FROM n8nio/n8n:alpine

USER root
# Install tools on Alpine (apk instead of apt-get)
RUN apk add --no-cache ffmpeg python3 py3-pip \
 && python3 -m pip install --no-cache-dir -U pip \
 && python3 -m pip install --no-cache-dir yt-dlp opencv-python-headless numpy

USER node
