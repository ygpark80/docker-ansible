FROM python:3.10-slim-buster

RUN pip install --no-cache-dir pip --upgrade && \
    pip install --no-cache-dir ansible uptime-kuma-api && \
    ansible-galaxy collection install lucasheld.uptime_kuma && \
    apt-get update -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /work
