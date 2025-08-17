FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y && apt-get install -y --no-install-recommends \    bash \    ca-certificates \    curl \    git \    python3 \    python3-pip \    golang \    nmap \    sqlmap \  && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace
COPY . /workspace

CMD ["/bin/bash"]
