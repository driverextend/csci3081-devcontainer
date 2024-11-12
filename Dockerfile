# for M1/M2 mac users, use this FROM instruction instead
FROM --platform=linux/amd64 mcr.microsoft.com/devcontainers/base:ubuntu-22.04
# FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y build-essential libssl-dev zlib1g-dev pkg-config curl

RUN curl -sL https://deb.nodesource.com/setup_20.x | bash

# Need nodejs ~= 20.11.1
RUN apt-get update && apt-get install -y nodejs=20.11.1-1nodesource1

# Initialize .clang-format
CMD ["sh", "-c", "echo 'BasedOnStyle: Google\nIndentWidth: 2\nTabWidth: 2\nUseTab: Never\nColumnLimit: 80\nAllowShortFunctionsOnASingleLine: Empty\n' > .clang-format"]
