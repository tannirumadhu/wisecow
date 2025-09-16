FROM ubuntu:20.04

# Install dependencies
RUN apt-get update && apt-get install -y \
    fortune-mod \
    cowsay \
    netcat \
    && rm -rf /var/lib/apt/lists/*

# Copy your app
WORKDIR /app
COPY wisecow.sh .

# Make script executable
RUN chmod +x wisecow.sh

# Expose port
EXPOSE 4499

# Start script
CMD ["./wisecow.sh"]

