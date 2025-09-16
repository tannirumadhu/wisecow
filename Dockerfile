FROM ubuntu:20.04

# Install dependencies
RUN apt-get update && apt-get install -y \
    fortune-mod \
    cowsay \
    netcat \
    && rm -rf /var/lib/apt/lists/*

# Add /usr/games to PATH
ENV PATH="/usr/games:${PATH}"

WORKDIR /app
COPY . /app
RUN chmod +x wisecow.sh

CMD ["./wisecow.sh"]

