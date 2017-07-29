FROM blitznote/debootstrap-amd64:16.04

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        python3 \
        python3-pip \
        python3-setuptools \
        python3-dev \
        libpython3-dev \
    && pip3 install --upgrade \
        setuptools \
        wheel \
        awscli \
    && apt-get remove --purge -y \
        python3-pip \
        python3-setuptools \
        python3-dev \
        libpython3-dev \
    && rm -rf /var/lib/apt/lists/*

VOLUME /root/.aws

VOLUME /data
WORKDIR /data
