# for M1/M2 mac users, linux must be emulated through rosetta
FROM mcr.microsoft.com/devcontainers/base:ubuntu-22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    build-essential \
    libssl-dev \
    zlib1g-dev \
    pkg-config \
    curl \
    cpplint \
    clang-format \
    doxygen \
    graphviz \
    valgrind

RUN curl -sL https://deb.nodesource.com/setup_20.x | bash

# Need nodejs ~= 20.11.1
RUN apt-get update && apt-get install -y nodejs=20.11.1-1nodesource1
