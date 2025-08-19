FROM n8nio/n8n:latest

USER root
# Install Python + tools and fetch a static ffmpeg (works on Alpine)
RUN apk add --no-cache \
      python3 \
      py3-pip \
      yt-dlp \
      py3-numpy \
      py3-pillow \
      bash \
      curl \
      tar \
      xz \
 && curl -L https://johnvansickle.com/ffmpeg/releases/ffmpeg-release-amd64-static.tar.xz -o /tmp/ffmpeg.tar.xz \
 && tar -xJf /tmp/ffmpeg.tar.xz -C /tmp \
 && mv /tmp/ffmpeg-*-amd64-static/ffmpeg /usr/local/bin/ffmpeg \
 && mv /tmp/ffmpeg-*-amd64-static/ffprobe /usr/local/bin/ffprobe \
 && chmod +x /usr/local/bin/ffmpeg /usr/local/bin/ffprobe \
 && rm -rf /tmp/ffmpeg*

USER node
