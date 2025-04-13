FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    vim curl git sudo gcc g++ \
    python3 python3-pip python3-venv python3-dev \
    build-essential libffi-dev libc-dev

RUN useradd -m developer && echo "developer ALL=(ALL) NOPASSWD:ALL" >/etc/sudoers.d/developer

COPY entrypoint.sh /home/developer/entrypoint.sh
RUN chmod +x /home/developer/entrypoint.sh

USER developer
WORKDIR /home/developer

ENTRYPOINT ["/home/developer/entrypoint.sh"]

