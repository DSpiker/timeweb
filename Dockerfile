FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    vim curl git sudo gcc g++ \
    python3 python3-pip python3-venv python3-dev \
    build-essential libffi-dev libc-dev \
    && apt-get clean

RUN useradd -m developer && echo "developer ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/developer

USER developer
WORKDIR /home/developer

RUN git config --global user.name "Dev" && \
    git config --global user.email "dev@timeweb.local"

CMD ["/bin/bash"]

