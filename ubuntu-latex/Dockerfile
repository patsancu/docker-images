FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Berlin

RUN apt update \
    && apt install -y texlive texlive-full texstudio make vim \
    && rm -rf /var/lib/apt/lists/*


