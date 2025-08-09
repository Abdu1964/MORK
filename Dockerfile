FROM rust:latest

# Install git and build-essential (if you need them; rust image already has build tools)
RUN apt-get update && apt-get install -y \
  build-essential \
  cmake \
  git

COPY . /app

WORKDIR /app

# Make the script executable
RUN chmod +x script.sh

# Run the script on container start
CMD ["./script.sh"]

