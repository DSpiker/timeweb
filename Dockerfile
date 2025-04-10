FROM ubuntu:latest

# Install necessary software for development
RUN apt-get update && apt-get install -y \
    vim curl git sudo gcc g++ \
    python3 python3-pip python3-venv python3-dev \
    build-essential libffi-dev libc-dev

# Setup a developer user that is not root
RUN useradd -m developer && echo "developer ALL=(ALL) NOPASSWD:ALL" >/etc/sudoers.d/developer

# Switch to developer user
USER developer
WORKDIR /home/developer

# Git config
RUN git config --global user.name $GITHUB_USER && \
    git config --global user.email $GITHUB_EMAIL

CMD ["/bin/bash"]

