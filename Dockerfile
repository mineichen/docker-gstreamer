FROM debian:jessie

ENV PKG_CONFIG_PATH ${PKG_CONFIG_PATH}:/usr/lib/x86_64-linux-gnu/pkgconfig/ 

RUN addgroup gstreamer \
  && adduser --ingroup gstreamer --system gstreamer \
  && apt-get update \
  && apt-get install -y \
    libgstreamer1.0-dev \
    gstreamer1.0-tools \
    gstreamer1.0-plugins-good \
    gstreamer1.0-plugins-ugly \
    gstreamer1.0-plugins-bad \
    gstreamer1.0-libav \
    vim \
    libgstreamer-plugins-base1.0-dev \
    libgstreamer-plugins-bad1.0-dev

WORKDIR /home/gstreamer
