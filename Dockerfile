FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive \
‎    PYTHONDONTWRITEBYTECODE=1 \
‎    PYTHONUNBUFFERED=1 \
‎    JUPYTER_DIR=/workspace \
‎    TZ=UTC
‎
‎# 1) OS deps + dev tools + sudo + git + curl + Node.js (via NodeSource)
‎RUN apt-get update \
‎ && apt-get install -y --no-install-recommends \
‎    python3 python3-pip python3-venv \
‎    git curl wget ca-certificates \
‎    nano vim unzip zip \
‎    build-essential gcc g++ make \
‎    openssh-client sudo tini tzdata locales \
‎ && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
‎ && apt-get install -y --no-install-recommends nodejs \
‎ && rm -rf /var/lib/apt/lists/*
