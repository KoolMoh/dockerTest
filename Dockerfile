# Use an official Ubuntu runtime as a parent image
FROM ubuntu:20.04

# Install dependencies
RUN apt-get update && apt-get install -y \
    python3-pip \
    libcairo2-dev \
    libgirepository1.0-dev \
    gir1.2-gtk-3.0 \
    libnotify-bin \
    libdbus-1-dev \
    libdbus-glib-1-dev

# Install NTFY
RUN pip3 install ntfy[all]

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app
