
# Creating a Dockerfile for Python 3
# Use an existing base image from Docker Hub
FROM ubuntu:latest
# Set the working directory inside the container
WORKDIR /app
# Copy the application files from the host to the container
COPY . .
# Install any required dependencies
RUN apt-get update && apt-get install -y python3 python3-pip
# Install Flask using pip
RUN pip3 install Flask
# Expose a port on the container
EXPOSE 5000
# Specify the command to run when the container starts
CMD ["python3", "app.py","–host", "0.0.0.0"]

