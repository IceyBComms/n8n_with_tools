FROM n8nio/n8n:latest

USER root
RUN apt-get update && apt-get install -y ffmpeg python3-pip \
 && python3 -m pip install -U yt-dlp opencv-python-headless numpy \
 && rm -rf /var/lib/apt/lists/*

USER node
