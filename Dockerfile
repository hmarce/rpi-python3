# Pull base image
FROM resin/rpi-raspbian:jessie

# Install dependencies
RUN apt-get update && apt-get install -y \
    python3 \
    python3-dev \
    python3-pip \
    python3-virtualenv \
    python3-wheel \
    python3-sphinx \
    python3-setuptools \
    build-essential \
    git \
    --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

RUN pip3 install --upgrade pip setuptools

# Define working directory
WORKDIR /data

# Define default command
CMD ["bash"]
