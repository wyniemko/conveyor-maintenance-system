# Base image
FROM python:3.8-slim-buster

# Set the working directory
WORKDIR /app

# Copy the app.py file to the working directory
COPY app.py .

# Install necessary packages
RUN apt-get update && apt-get install -y \
    libglib2.0-0 \
    libsm6 \
    libxext6 \
    libxrender-dev \
 && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir flask opencv-python-headless numpy

# Expose port 5000 for the Flask app
EXPOSE 5000

# Set the entrypoint to run the Flask app
ENTRYPOINT ["python", "app.py"]